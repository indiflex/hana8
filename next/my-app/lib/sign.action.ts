'use server';

import { AuthError } from 'next-auth';
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

export type EmailPasswd = { email: string; passwd: string };

export const loginEmail = async (
  formData: FormData,
): Promise<[ValidError<EmailPasswd>] | [undefined, EmailPasswd]> => {
  const email = formData.get('email') as string;
  const passwd = formData.get('passwd') as string;
  const data = { email, passwd };
  try {
    if (!email) return [{ error: { email: 'Input the email!' }, data }];
    if (!passwd) return [{ error: { passwd: 'Input the passwd!' }, data }];

    const ret = await signIn('credentials', { redirect: false, email, passwd });
    console.log('🚀 ~ signIn.return:', ret);
    return [undefined, data];
  } catch (err) {
    console.log('🚀 ~ err:', err, err instanceof AuthError);
    return [{ error: { email: JSON.stringify(err) }, data }];
  }
};

export const loginGoogle = async (formData: FormData) =>
  login('google', formData);

export const loginGithub = async (formData: FormData) =>
  login('github', formData);
