'use server';

import { redirect } from 'next/navigation';
import { AuthError } from 'next-auth';
import z from 'zod';
import { auth, signIn, signOut } from './auth';
import { isErrorWithMessage } from './errors';
import { prisma } from './prisma';
import {
  comparePassword,
  encryptPassword,
  saveProfile,
  type ValidError,
  validate,
} from './validator';

export type Provider = 'google' | 'github' | 'credentials';

export const logout = async () => {
  await signOut({ redirectTo: '/sign' });
};

const login = async (provider: Provider, formData: FormData) => {
  const redirectTo = formData.get('redirectTo') as string;
  await signIn(provider, { redirectTo });
};

export const loginEmail = async (formData: FormData) => {
  const zobj = z.object({
    email: z.email('Invalid Email Address!'),
    passwd: z.string().min(3, 'Password is more than 3 characters!'),
  });

  const [err, data] = validate(zobj, formData);
  if (err) return [err];

  try {
    const ret = await signIn('credentials', { redirect: false, ...data });
    console.log('🚀 ~ signIn.return:', ret);

    return [undefined, data];
  } catch (err) {
    console.log('🚀 ~ err:', err, err instanceof AuthError);
    if (err instanceof AuthError) {
      const msg = err.message || 'EmailSignInError';
      const email = msg.substring(0, msg.indexOf('Read more'));
      return [{ error: { email }, data }];
    }
    return [{ error: { email: JSON.stringify(err) }, data }];
  }
};

export const loginGoogle = async (formData: FormData) =>
  login('google', formData);

export const loginGithub = async (formData: FormData) =>
  login('github', formData);

export const regist = async (
  _: ValidError | undefined,
  formData: FormData,
): Promise<ValidError | undefined> => {
  const imageFile = await saveProfile(formData.get('image') as File);
  console.log('🚀 ~ imageFile:', imageFile);
  formData.set('image', imageFile || '');

  const zobj = z
    .object({
      name: z.string().min(1, 'Input the name!').max(30),
      email: z.email(),
      passwd: z.string().min(3),
      passwd2: z.string().min(3),
      image: z.nullable(z.string()),
    })
    .refine(({ passwd, passwd2 }) => passwd === passwd2, {
      path: ['passwd2'],
      message: 'Not equals the passwd and passwd2!',
    });

  const [err, data] = validate(zobj, formData);
  console.log('🚀 ~ err:', err, data);
  if (err) return err;

  const { email, name, image } = data;
  try {
    const passwd = await encryptPassword(data.passwd);
    const user = await prisma.user.findUnique({
      where: { email },
    });

    if (user)
      return {
        error: { email: 'This email is already exists!' },
        data,
      } satisfies ValidError;

    await prisma.user.create({
      data: { email, name, passwd, image },
      select: { id: true, name: true, email: true, isadmin: true },
    });

    redirect('/sign');
  } catch (err) {
    let message = JSON.stringify(err);
    if (isErrorWithMessage(err)) {
      if (err.message === 'NEXT_REDIRECT') redirect('/sign');
      message = err.message;
    }
    return {
      error: { email: message },
      data,
    };
  }
};

export const changePassword = async (formData: FormData) => {
  const session = await auth();
  if (!session?.user) throw new Error('Need Login!');

  const zobj = z
    .object({
      email: z.email(),
      curr_passwd: z.nullable(z.string().min(3)),
      passwd: z.string().min(3),
      passwd2: z.string().min(3),
    })
    .superRefine(async ({ email, curr_passwd, passwd, passwd2 }, ctx) => {
      const oldUser = await prisma.user.findUnique({
        where: { email },
      });

      if (!oldUser) {
        ctx.addIssue({
          code: 'custom',
          path: ['email'],
          message: 'Not exists user!',
        });
      }

      if (oldUser?.passwd) {
        if (!(await comparePassword(curr_passwd || '', oldUser.passwd))) {
          ctx.addIssue({
            code: 'custom',
            path: ['curr_passwd'],
            message: 'Invalid current password!',
          });
        }
      }

      if (passwd !== passwd2)
        ctx.addIssue({
          code: 'custom',
          path: ['passwd2'],
          message: 'Not equals the passwd and passwd2!',
        });
    });

  const [err, data] = validate(zobj, formData);
  console.log('🚀 ~ err:', err, data);
  if (err) return [err] as [ValidError];

  const { email } = data;
  try {
    const passwd = await encryptPassword(data.passwd);
    const newer = await prisma.user.update({
      where: { email },
      data: { passwd },
      select: { id: true, name: true, email: true, isadmin: true },
    });

    return [undefined, newer] as const;
  } catch (err) {
    let message = JSON.stringify(err);
    if (isErrorWithMessage(err)) {
      if (err.message === 'NEXT_REDIRECT') redirect('/sign');
      message = err.message;
    }
    return [
      {
        error: { email: message, curr_passwd: '', passwd: '', passwd2: '' },
        data,
      },
    ];
  }
};

export const changeProfile = async (formData: FormData) => {
  const session = await auth();
  if (!session?.user) throw new Error('Need Login!');

  const imageFile = await saveProfile(formData.get('image') as File);
  console.log('🚀 ~ imageFile:', imageFile);
  formData.set('image', imageFile || '');

  const zobj = z.object({
    name: z.string().min(1, 'Input the name!').max(30),
    prevEmail: z.email(),
    email: z.email(),
    image: z.nullable(z.string()),
  });

  const [err, data] = validate(zobj, formData);
  console.log('🚀 ~ err:', err, data);
  if (err) return [err] as const;

  const { email, prevEmail, name, image } = data;
  try {
    const oldUser = await prisma.user.findUnique({
      where: { email: prevEmail },
    });

    if (!oldUser)
      return [
        {
          error: { email: 'Invalid Previous Email!' },
          data,
        },
      ] as [ValidError];

    if (email !== prevEmail) {
      const user = await prisma.user.findUnique({
        where: { email },
      });

      if (user)
        return [
          {
            error: { email: 'This email is already exists!' },
            data,
          },
        ] as [ValidError];
    }

    const newer = await prisma.user.update({
      where: { email: prevEmail },
      data: { email, name, image },
    });

    return [undefined, newer] as const;
  } catch (err) {
    let message = JSON.stringify(err);
    if (isErrorWithMessage(err)) {
      if (err.message === 'NEXT_REDIRECT') redirect('/sign');
      message = err.message;
    }
    return [
      {
        error: { email: message, name: '' },
        data,
      },
    ];
  }
};
