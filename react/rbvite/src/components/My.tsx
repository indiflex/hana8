import type { LoginFunction, Session } from '../App';
import Login from './Login';
import Profile from './Profile';
import Small from './ui/Small';

type Prop = {
  session: Session;
  logout: () => void;
  login: LoginFunction;
};

export default function My({ session, logout, login }: Prop) {
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
          </li>
        ))}
      </ul>
    </>
  );
}
