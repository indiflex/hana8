'use client';

import type { Route } from 'next';
import { useRouter, useSearchParams } from 'next/navigation';
import { useActionState } from 'react';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { loginEmail } from '@/lib/sign.action';
import type { ValidError } from '@/lib/validator';

export default function SignForm() {
  const router = useRouter();
  const searchParams = useSearchParams();
  const redirectTo = searchParams.get('callbackUrl') || '/hello';

  const defaultError =
    process.env.NODE_ENV === 'development'
      ? {
          error: {},
          data: {
            email: 'sico@gmail.com',
            passwd: '1212',
          },
        }
      : undefined;

  const [validError, login, isPending] = useActionState(
    async (_: ValidError | undefined, formData: FormData) => {
      const [err, data] = await loginEmail(formData);
      console.log('🚀 ~ err:', err, data);
      if (err) {
        return err as ValidError;
      }

      console.log('🚀 ~ redirectTo:', redirectTo);
      router.push(redirectTo as Route);
    },
    defaultError,
  );

  return (
    <div className="grid place-items-center">
      <form action={login} className="w-full space-y-3">
        <input type="hidden" name="redirectTo" value={redirectTo} />

        <div className="space-y-1">
          <Label htmlFor="email">email</Label>
          <Input
            id="email"
            name="email"
            type="email"
            defaultValue={validError?.data.email || ''}
            placeholder="user@email.com"
            className="w-full"
          />
          {validError?.error.email && (
            <p className="text-red-500">{validError.error.email}</p>
          )}
        </div>

        <div className="space-y-1">
          <Label htmlFor="passwd">password</Label>
          <Input
            id="passwd"
            name="passwd"
            type="password"
            defaultValue={validError?.data.passwd || ''}
            placeholder="password..."
          />
          {validError?.error.passwd && (
            <p className="text-red-500">{validError.error.passwd}</p>
          )}
        </div>

        <div className="flex justify-center gap-5">
          <Button variant={'outline'} type="reset">
            Cancel
          </Button>
          <Button type="submit" disabled={isPending}>
            LogIn{isPending && '...'}
          </Button>
        </div>
      </form>
    </div>
  );
}
