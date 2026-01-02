import { auth } from '@/lib/auth';
import ChangePassword from './ChangePassword';
import ChangeProfile from './ChangeProfile';

export default async function My() {
  const session = await auth();

  return (
    <>
      <h1 className="text-center text-xl">My</h1>

      <ChangeProfile />

      <ChangePassword />
    </>
  );
}
