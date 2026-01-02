import { redirect } from 'next/navigation';
import { auth } from '@/lib/auth';
import ChangePassword from './ChangePassword';
import ChangeProfile from './ChangeProfile';

export default async function My() {
  const session = await auth();
  if (!session || !session.user) redirect('/sign');

  return (
    <div className="mx-auto w-96">
      <h1 className="text-center text-xl">My</h1>

      <ChangeProfile session={session} />

      <ChangePassword session={session} />
    </div>
  );
}
