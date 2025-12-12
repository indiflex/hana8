import type { LoginFunction, Session } from '../App';
import Login from './Login';
import Profile from './Profile';
import Button from './ui/Button';
import Small from './ui/Small';

type Prop = {
  session: Session;
  logout: () => void;
  login: LoginFunction;
  removeItem: (id: number) => void;
};

export default function My({ session, logout, login, removeItem }: Prop) {
  return (
    <>
      {session?.loginUser ? (
        <Profile loginUser={session.loginUser} logout={logout} />
      ) : (
        <Login login={login} />
      )}
      <hr />
      <ul>
        {session.cart.map(({ id, name, price }) => (
          <li key={id}>
            <Small>{id}.</Small> {name}
            <Small>{price.toLocaleString()}원</Small>
            <Button
              onClick={() => removeItem(id)}
              className='ml-2 px-1 py-0 text-sm bg-red-500 hover:bg-red-600 text-white shadow-lg hover:shadow-2xl active:scale-150 transition duration-300'
            >
              X
            </Button>
          </li>
        ))}
      </ul>
    </>
  );
}
