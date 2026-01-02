'use client';

import type { Session } from 'next-auth';
import { useSession } from 'next-auth/react';
import { useActionState } from 'react';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { changeProfile } from '@/lib/sign.action';
import type { ValidError } from '@/lib/validator';

export default function ChangeProfile({ session }: { session: Session }) {
  const { update } = useSession();

  const {
    user: { email, name },
  } = session;

  const defaultError =
    process.env.NODE_ENV === 'development'
      ? { error: {}, data: { email, name } }
      : undefined;

  const [validError, change, isPending] = useActionState(
    async (_: ValidError | undefined, formData: FormData) => {
      const [err, data] = await changeProfile(formData);
      if (err) return err;
      await update(data);
    },
    defaultError,
  );
  return (
    <form action={change}>
      <input type="hidden" name="prevEmail" defaultValue={email || ''} />

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
        <Label htmlFor="name">name</Label>
        <Input
          id="name"
          name="name"
          type="text"
          defaultValue={validError?.data.name || ''}
          placeholder="nickname..."
          className="w-full"
        />
        {validError?.error.name && (
          <p className="text-red-500">{validError.error.name}</p>
        )}
      </div>

      <div className="text-center">
        <Button type="submit" disabled={isPending}>
          Save Profile {isPending && '...'}
        </Button>
      </div>
    </form>
  );
}
