'use server';

import { AuthError } from 'next-auth';
import z from 'zod';
import { signIn, signOut } from './auth';

export type Provider = 'google' | 'github' | 'credentials';

export const logout = async () => {
  await signOut({ redirectTo: '/sign' });
};

const login = async (provider: Provider, formData: FormData) => {
  const redirectTo = formData.get('redirectTo') as string;
  await signIn(provider, { redirectTo });
};

export type ValidError<T> = {
  error: {
    [k in keyof T]?: string;
  };
  data: T;
};

export type EmailPasswd = {
  email: string | FormDataEntryValue;
  passwd: string | FormDataEntryValue;
};

const validate = <T>(zobj: z.ZodObject<T>, formData: FormData) => {
  const data = Object.fromEntries(formData.entries());
  // const data = { email, passwd };
  const validator = zobj.safeParse(data);
  console.log('🚀 ~ validator:', validator);
  if (!validator.success) {
    console.log('****', z.treeifyError(validator.error));
    const verr = z.treeifyError(validator.error).properties;
    const validError: ValidError<EmailPasswd> = { error: {}, data };

    for (const [k, v] of Object.entries(verr || [])) {
      validError.error[k as keyof typeof data] = v.errors[0];
    }

    return [validError];
  }
};

export const loginEmail = async (
  formData: FormData,
): Promise<[ValidError<EmailPasswd>] | [undefined, EmailPasswd]> => {
  const zobj = z.object({
    email: z.email('Invalid Email Address!'),
    passwd: z.string().min(3, 'Password is more than 3 characters!'),
  });

  validate(zobj, formData);

  const { email, passwd } = Object.fromEntries(formData.entries());
  const data = { email, passwd };
  const validator = zobj.safeParse(data);
  console.log('🚀 ~ validator:', validator);
  if (!validator.success) {
    console.log('****', z.treeifyError(validator.error));
    const verr = z.treeifyError(validator.error).properties;
    const validError: ValidError<EmailPasswd> = { error: {}, data };

    for (const [k, v] of Object.entries(verr || [])) {
      validError.error[k as keyof typeof data] = v.errors[0];
    }

    return [validError];
  }

  // const email = formData.get('email') as string;
  // const passwd = formData.get('passwd') as string;
  // const data = { email, passwd };
  try {
    // if (!email) return [{ error: { email: 'Input the email!' }, data }];
    // if (!passwd) return [{ error: { passwd: 'Input the passwd!' }, data }];

    const ret = await signIn('credentials', { redirect: false, email, passwd });
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
