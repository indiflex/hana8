import {
  createContext,
  use,
  useEffect,
  useReducer,
  useRef,
  type PropsWithChildren,
  type RefObject,
} from 'react';
import type { LoginHandler } from '../components/Login';
import { useFetch } from './useFetch';
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

const SKEY = `CART_v1`;
const SKEY_EXP = 'CART_EXP';
const SKEY_EXP_TIME = 86400 * 1000 * 31;
const setStorage = (cart: ItemType[]) => {
  localStorage.setItem(SKEY, JSON.stringify(cart));
  localStorage.setItem(SKEY_EXP, String(Date.now() + SKEY_EXP_TIME));
};
const getStorage = () => {
  const expireAt = Number(localStorage.getItem(SKEY_EXP));
  if (isNaN(expireAt) || expireAt < Date.now()) {
    localStorage.clear();
    return [];
  }
  return JSON.parse(localStorage.getItem(SKEY) || '[]') as ItemType[];
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
  session: { loginUser: null, cart: [] },
  login: () => {},
  logout: () => {},
  loginHandlerRef: null,
  removeItem: () => {},
  saveItem: () => {},
});

type Action =
  | { type: 'INITIALIZE'; payload: ItemType[] }
  | { type: 'LOGIN'; payload: LoginUser }
  | { type: 'LOGOUT'; payload: null }
  // | { type: 'ADD-ITEM'; payload: Omit<ItemType, 'id'> }
  | { type: 'ADD-ITEM'; payload: ItemType }
  | { type: 'EDIT-ITEM'; payload: ItemType }
  | { type: 'REMOVE-ITEM'; payload: number };

const reducer = (session: Session, { type, payload }: Action) => {
  let cart = [];
  switch (type) {
    case 'LOGIN':
    case 'LOGOUT':
      return { ...session, loginUser: payload };
    case 'ADD-ITEM':
      cart = [...session.cart, payload];
      break;
    case 'EDIT-ITEM':
      cart = session.cart.map((item) =>
        item.id === payload.id ? payload : item
      );
      break;
    case 'REMOVE-ITEM':
      cart = session.cart.filter((item) => item.id !== payload);
      break;
    case 'INITIALIZE':
      cart = payload;
      break;
    default:
      return session;
  }

  setStorage(cart);
  return { ...session, cart };
};

export function SessionProvider({ children }: PropsWithChildren) {
  // const [session, setSession] = useState<Session>(DefaultSession);
  const [session, dispatch] = useReducer(reducer, {
    loginUser: { id: 1, name: 'Hong', age: 33 },
    cart: getStorage(),
  });

  const { data: sampleData } = useFetch<ItemType[]>('/data/sample.json');
  // console.log('🚀 ~ data:', sampleData, session.cart);
  useEffect(() => {
    if (sampleData && !session.cart.length) {
      dispatch({ type: 'INITIALIZE', payload: sampleData });
    }
  }, [sampleData]);

  const loginHandlerRef = useRef<LoginHandler>(null);

  const logout = () => {
    // session.loginUser = null; // fail!!
    // setSession({ ...session, loginUser: null });
    dispatch({ type: 'LOGOUT', payload: null });
  };

  const login: LoginFunction = (name, age) => {
    if (loginHandlerRef.current?.validate())
      dispatch({ type: 'LOGIN', payload: { id: 1, name, age } });
    // setSession({ ...session, loginUser: { id: 1, name, age } });
  };

  const removeItem = (id: number) => {
    if (!confirm('Are u sure?')) return;

    // setSession({
    //   ...session,
    //   cart: session.cart.filter((item) => item.id !== id),
    // });
    dispatch({ type: 'REMOVE-ITEM', payload: id });
  };

  const saveItem = ({ id, name, price }: ItemType) => {
    const item = id && session.cart.find((item) => item.id === id);

    // updateItem
    // session.cart.map(item => item.id === id ? { id: item.id, name, price } : item);

    if (item) {
      // item.name = name;
      // item.price = price;
      // setSession({
      //   ...session,
      //   cart: session.cart.map((item) =>
      //     item.id === id ? { id, name, price } : item
      //   ),
      // });
      dispatch({ type: 'EDIT-ITEM', payload: { id, name, price } });
    } else {
      const newItem = {
        id: Math.max(...session.cart.map((item) => item.id), 0) + 1,
        name,
        price,
      };
      // setSession({ ...session, cart: [...session.cart, newItem] });
      dispatch({ type: 'ADD-ITEM', payload: newItem });
    }
  };

  return (
    <SessionContext
      value={{ session, login, logout, loginHandlerRef, removeItem, saveItem }}
    >
      {children}
    </SessionContext>
  );
}

export const useSession = () => use(SessionContext);
