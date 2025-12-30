import { Button } from '@/components/ui/button';
import { Separator } from '@/components/ui/separator';
import { loginGithub, loginGoogle } from '@/lib/sign.action';
import SignForm from './SignForm';

export default function SignPage() {
  // const login = async (provider: Provider) => {
  //   'use server';
  //   await signIn(provider, {
  //     redirectTo: '/hello',
  //   });
  // };

  return (
    <>
      <h1 className="text-xl">Sign In</h1>
      <form className="flex gap-3">
        <input type="hidden" name="redirectTo" value="/hello" />
        <Button formAction={loginGoogle}>Google</Button>
        <Button formAction={loginGithub}>Github</Button>
      </form>

      <Separator className="my-3" />
      <SignForm redirectTo="/hello" />
    </>
  );
}
