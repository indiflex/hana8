'use client';

import type { Session } from 'next-auth';
import { useSession } from 'next-auth/react';
import { useActionState, useReducer } from 'react';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { changePassword } from '@/lib/sign.action';
import type { ValidError } from '@/lib/validator';

export default function ChangePassword({ session }: { session: Session }) {
  const { update } = useSession();
  const [isEditing, toggleEditing] = useReducer((p) => !p, false);

  const [validError, change, isPending] = useActionState(
    async (_: ValidError | undefined, formData: FormData) => {
      const [err, data] = await changePassword(formData);
      if (err) return err;
      await update(data);
    },
    undefined,
  );

  return (
    <>
      {isEditing ? (
        <form action={change}>
          <input
            type="hidden"
            name="email"
            defaultValue={session.user.email || ''}
          />
          <div className="space-y-1">
            <Label htmlFor="passwd">Current Password</Label>
            <Input
              id="curr_passwd"
              name="curr_passwd"
              type="password"
              defaultValue={validError?.data.curr_passwd || ''}
              placeholder="password..."
            />
            {validError?.error.curr_passwd && (
              <p className="text-red-500">{validError.error.curr_passwd}</p>
            )}
          </div>

          <div className="space-y-1">
            <Label htmlFor="passwd">New Password</Label>
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
          <div className="space-y-1">
            <Label htmlFor="passwd2">New Password Confirm</Label>
            <Input
              id="passwd2"
              name="passwd2"
              type="password"
              defaultValue={validError?.data.passwd2 || ''}
              placeholder="password2..."
            />
            {validError?.error.passwd2 && (
              <p className="text-red-500">{validError.error.passwd2}</p>
            )}
          </div>

          <div className="text-center">
            <Button type="submit" disabled={isPending}>
              Save Password {isPending && '...'}
            </Button>
          </div>
        </form>
      ) : (
        <Button onClick={toggleEditing} variant={'destructive'}>
          Change Password
        </Button>
      )}
    </>
  );
}
