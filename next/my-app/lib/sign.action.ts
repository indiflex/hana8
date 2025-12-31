'use server';

import { AuthError } from 'next-auth';
import z from 'zod';
import { signIn, signOut } from './auth';
import { isErrorWithMessage } from './errors';
import { prisma } from './prisma';

export type Provider = 'google' | 'github' | 'credentials';

export const logout = async () => {
  await signOut({ redirectTo: '/sign' });
};

const login = async (provider: Provider, formData: FormData) => {
  const redirectTo = formData.get('redirectTo') as string;
  await signIn(provider, { redirectTo });
};

export type ValidError = {
  error: Record<string, string | undefined>;
  data: Record<string, string | undefined>;
};

const validate = <T extends z.ZodObject>(zobj: T, formData: FormData) => {
  const data = Object.fromEntries(formData.entries()) as ValidError['data'];
  const validator = zobj.safeParse(data);
  if (!validator.success) {
    const verr = z.treeifyError(validator.error).properties || {};
    const validError: ValidError = { error: {}, data };
    for (const [k, v] of Object.entries(verr)) {
      validError.error[k] = v?.errors[0];
    }
    return [validError] as const;
  }

  return [undefined, validator.data] as const;
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

export const regist = async (_: ValidError | undefined, formData: FormData) => {
  const zobj = z
    .object({
      name: z.string().min(1).max(30),
      email: z.email(),
      passwd: z.string().min(3),
      passwd2: z.string().min(3),
    })
    .refine(
      ({ passwd, passwd2 }) => passwd === passwd2,
      'Not equals the passwd and passwd2!',
    );

  const [err, data] = validate(zobj, formData);
  console.log('🚀 ~ err:', err, data);
  if (err) return [err];

  const { email } = data;
  try {
    const user = await prisma.user.findUnique({
      where: { email },
    });

    if (user)
      return [
        { error: { email: 'This email is already exists!' }, data },
      ] satisfies [ValidError];

    const newUser = await prisma.user.create({
      data,
      select: { id: true, name: true, email: true, isadmin: true },
    });

    return [undefined, newUser];
  } catch (err) {
    return [
      {
        error: {
          email: isErrorWithMessage(err) ? err.message : JSON.stringify(err),
        },
        data,
      },
    ];
  }
};
