import { use } from 'react';
import { Separator } from '@/components/ui/separator';
import { loginGithub, loginGoogle } from '@/lib/sign.action';
import { GithubLoginButton } from './GithubLoginButton';
import { GoogleLoginButton } from './GoogleLoginButton';
import SignForm from './SignForm';

export default function SignPage({
  searchParams,
}: {
  searchParams: Promise<{ callbackUrl?: string }>;
}) {
  const { callbackUrl } = use(searchParams);

  return (
    <div className="mx-auto w-96 rounded-md border p-5">
      <h1 className="text-center font-semibold text-xl mb-5">Sign In</h1>
      <form className="flex gap-3">
        <input
          type="hidden"
          name="redirectTo"
          value={callbackUrl || '/hello'}
        />
        <div className="grid grid-cols-2 place-items-center gap-5">
          <GoogleLoginButton formAction={loginGoogle} />
          <GithubLoginButton formAction={loginGithub} />
        </div>
      </form>

      <Separator className="my-3" />
      <SignForm />
    </div>
  );
}
