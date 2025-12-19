import { useSession, type ItemType } from '@/hooks/SessionContext';
import { useThrottle } from '@/hooks/useTimer';
import { PlusIcon } from 'lucide-react';
import {
  useDeferredValue,
  useState,
  useTransition,
  type ChangeEvent,
} from 'react';
import { Link, useNavigate } from 'react-router-dom';
import Btn from './ui/Btn';
import LabelInput from './ui/LabelInput';
import Spinner from './ui/Spinner';

export default function Items() {
  const { session } = useSession();
  const [searchResult, setSearchResult] = useState<ItemType[]>([]);
  const navigate = useNavigate();
  const [isSearching, startSearchTransition] = useTransition();
  const handleSearch = (e: ChangeEvent<HTMLInputElement>) => {
    startSearchTransition(async () => {
      await new Promise((resolve) => setTimeout(resolve, 500));
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
      <LabelInput label='Search' onChange={handleSearch} autoComplete='off' />
      <ul>
        {session.cart
          ?.filter((item) => item.name.includes(debouncedSearchStr))
          .map((item) => (
            <li key={item.id}>
              <Link to={`${item.id}?q=111`}>
                {item.id}. {item.name}
              </Link>
            </li>
          ))}
      </ul>
    </>
  );
}
