'use client';

import { useSearchParams } from 'next/navigation';
import { useActionState } from 'react';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { regist } from '@/lib/sign.action';

export default function RegistForm() {
  const searchParams = useSearchParams();
  const redirectTo = searchParams.get('callbackUrl') || '/hello';

  const [validError, login, isPending] = useActionState(regist, undefined);

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
        <div className="space-y-1">
          <Label htmlFor="passwd2">password2</Label>
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

        <div className="space-y-1">
          <Label htmlFor="image">Profile Image</Label>
          <Input
            id="image"
            name="image"
            type="file"
            placeholder="profile image..."
          />
          {validError?.error.image && (
            <p className="text-red-500">{validError.error.image}</p>
          )}
        </div>

        <div className="flex justify-center gap-5">
          <Button variant={'outline'} type="reset">
            Cancel
          </Button>
          <Button type="submit" disabled={isPending}>
            Regist {isPending && '...'}
          </Button>
        </div>
      </form>
    </div>
  );
}
