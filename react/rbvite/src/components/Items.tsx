import { useSession, type ItemType } from '@/hooks/SessionContext';
import { useThrottle } from '@/hooks/useTimer';
import { PlusIcon } from 'lucide-react';
import {
  useDeferredValue,
  useReducer,
  useState,
  useTransition,
  type ChangeEvent,
} from 'react';
import Item from './Item';
import Btn from './ui/Btn';
import LabelInput from './ui/LabelInput';
import Spinner from './ui/Spinner';

export default function Items() {
  const { session } = useSession();

  const [isAdding, toggleAdding] = useReducer((pre) => !pre, false);

  const [searchResult, setSearchResult] = useState<ItemType[]>([]);
  const [isSearching, startSearchTransition] = useTransition();
  const handleSearch = (e: ChangeEvent<HTMLInputElement>) => {
    startSearchTransition(async () => {
      await new Promise((resolve) => setTimeout(resolve, 1500));
      const str = e.target.value;
      setSearchStr(str);
      setSearchResult(session.cart.filter((item) => item.name.includes(str)));
    });
  };

  const [searchStr, setSearchStr] = useState('');
  const debouncedSearchStr = useThrottle(searchStr, 500);
  const deferredStr = useDeferredValue(searchStr, 'xxx');

  return (
    <>
      <h1 className='text-2xl'>ITEMS</h1>
      <div>SR_Transition: {searchResult.map((item) => item.name).join()}</div>
      {isSearching ? (
        <Spinner />
      ) : (
        <h2 className='text-xl text-red-500'>
          {searchStr} : {deferredStr} : {debouncedSearchStr}
        </h2>
      )}
      <LabelInput
        label='Transition'
        onChange={handleSearch}
        autoComplete='off'
      />
      <ul>
        {session.cart
          ?.filter((item) => item.name.includes(debouncedSearchStr))
          .map((item) => (
            <li key={item.id}>
              <Item item={item} />
            </li>
          ))}
        <li className='text-center'>
          {isAdding ? (
            <Item
              item={{ id: 0, name: 'New Item', price: 3000 }}
              toggleAdding={toggleAdding}
            />
          ) : (
            <Btn onClick={toggleAdding} className=''>
              <PlusIcon />
            </Btn>
          )}
        </li>
      </ul>
    </>
  );
}
