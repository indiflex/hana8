import type { ItemType, LoginFunction, Session } from '../App';
import Item from './Item';
import Login from './Login';
import Profile from './Profile';

type Prop = {
  session: Session;
  logout: () => void;
  login: LoginFunction;
  removeItem: (id: number) => void;
  saveItem: ({ id, name, price }: ItemType) => void;
};

export default function My({
  session,
  logout,
  login,
  removeItem,
  saveItem,
}: Prop) {
  return (
    <>
      {session?.loginUser ? (
        <Profile loginUser={session.loginUser} logout={logout} />
      ) : (
        <Login login={login} />
      )}
      <hr />
      <ul>
        {session.cart.map((item) => (
          <li key={item.id}>
            <Item item={item} removeItem={removeItem} saveItem={saveItem} />
          </li>
        ))}
      </ul>
    </>
  );
}
