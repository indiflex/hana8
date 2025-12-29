import { Button } from '@/components/ui/button';
import { signIn } from '@/lib/auth';

type Provider = 'google' | 'github';

export default function SignPage() {
  const login = async (provider: Provider) => {
    'use server';
    await signIn(provider, {
      redirectTo: '/hello',
    });
  };

  return (
    <>
      <h1 className="text-xl">Sign In</h1>
      <form className="flex gap-3">
        <Button
          formAction={async () => {
            'use server';
            await login('google');
          }}
        >
          Google
        </Button>

        <Button
          formAction={async () => {
            'use server';
            await login('github');
          }}
        >
          Github
        </Button>
      </form>
    </>
  );
}
