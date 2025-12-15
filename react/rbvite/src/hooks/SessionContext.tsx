import {
  createContext,
  use,
  useRef,
  useState,
  type PropsWithChildren,
  type RefObject,
} from 'react';
import type { LoginHandler } from '../components/Login';
export type ItemType = {
  id: number;
  name: string;
  price: number;
  isSoldOut?: boolean;
};
export type LoginUser = { id: number; name: string; age: number };
export type Session = {
  loginUser: LoginUser | null;
  cart: ItemType[];
};
export type LoginFunction = (name: string, age: number) => void;

const DefaultSession = {
  // loginUser: null,
  loginUser: { id: 1, name: 'Hong', age: 33 },
  cart: [
    { id: 100, name: '라면', price: 3000 },
    { id: 101, name: '컵라면', price: 2000 },
    { id: 200, name: '파', price: 5000 },
  ],
};

type SessionContextValue = {
  session: Session;
  login: LoginFunction;
  logout: () => void;
  loginHandlerRef: RefObject<LoginHandler | null> | null;
  removeItem: (id: number) => void;
  saveItem: (item: ItemType) => void;
};
const SessionContext = createContext<SessionContextValue>({
  session: DefaultSession,
  login: () => {},
  logout: () => {},
  loginHandlerRef: null,
  removeItem: () => {},
  saveItem: () => {},
});

export function SessionProvider({ children }: PropsWithChildren) {
  const [session, setSession] = useState<Session>(DefaultSession);

  const loginHandlerRef = useRef<LoginHandler>(null);

  const logout = () => {
    // session.loginUser = null; // fail!!
    setSession({ ...session, loginUser: null });
  };

  const login: LoginFunction = (name, age) => {
    if (loginHandlerRef.current?.validate())
      setSession({ ...session, loginUser: { id: 1, name, age } });
  };

  const removeItem = (id: number) => {
    if (!confirm('Are u sure?')) return;

    setSession({
      ...session,
      cart: session.cart.filter((item) => item.id !== id),
    });
  };

  const saveItem = ({ id, name, price }: ItemType) => {
    const item = id && session.cart.find((item) => item.id === id);

    // updateItem
    // session.cart.map(item => item.id === id ? { id: item.id, name, price } : item);

    if (item) {
      // item.name = name;
      // item.price = price;
      setSession({
        ...session,
        cart: session.cart.map((item) =>
          item.id === id ? { id, name, price } : item
        ),
      });
    } else {
      const newItem = {
        id: Math.max(...session.cart.map((item) => item.id), 0) + 1,
        name,
        price,
      };
      setSession({ ...session, cart: [...session.cart, newItem] });
    }
  };

  return (
    <SessionContext.Provider
      value={{ session, login, logout, loginHandlerRef, removeItem, saveItem }}
    >
      {children}
    </SessionContext.Provider>
  );
}

export const useSession = () => use(SessionContext);
