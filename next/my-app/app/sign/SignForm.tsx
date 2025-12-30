'use client';

import { useActionState, useState } from 'react';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import {
  type EmailPasswd,
  loginEmail,
  type ValidError,
} from '@/lib/sign.action';

type Props = {
  redirectTo?: string;
};

export default function SignForm({ redirectTo = '/hello' }: Props) {
  const [credential, setCredential] = useState<EmailPasswd>({
    email: '',
    passwd: '',
  });

  const [validError, login, isPending] = useActionState(
    async (_: ValidError<EmailPasswd> | undefined, formData: FormData) => {
      const [err, data] = await loginEmail(formData);
      console.log('🚀 ~ err:', data);
      if (err) {
        setCredential(err.data);
        return err;
      }
      setCredential(data);
    },
    undefined,
  );

  return (
    <div className="grid place-items-center">
      <form action={login} className="w-96 space-y-3">
        <input type="hidden" name="redirectTo" value={redirectTo} />

        <div className="space-y-1">
          <Label htmlFor="email">email</Label>
          <Input
            id="email"
            name="email"
            type="email"
            defaultValue={'abc@gmail.com'}
            placeholder="user@email.com"
            className="w-full"
          />
        </div>

        <div className="space-y-1">
          <Label htmlFor="passwd">password</Label>
          <Input
            id="passwd"
            name="passwd"
            type="password"
            placeholder="password..."
          />
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
