import type { LoginUser } from '../App';
import Button from './ui/Button';

type Prop = {
  loginUser: LoginUser;
  logout: () => void;
};
export default function Profile({ loginUser, logout }: Prop) {
  return (
    <>
      <h1 className='text-2xl'>LoginUser: {loginUser.name}</h1>
      <Button
        onClick={logout}
        className='bg-red-500 hover:bg-red-400 text-white'
      >
        LogOut
      </Button>
    </>
  );
}
