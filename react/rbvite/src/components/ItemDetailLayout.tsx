import { type ItemType, useSession } from '@/hooks/SessionContext';
import {
  Outlet,
  useOutletContext,
  useParams,
  useSearchParams,
} from 'react-router-dom';

export default function ItemDetailLayout() {
  const {
    session: { cart },
  } = useSession();
  const params = useParams();
  const id = Number(params.id);
  const [searchParam] = useSearchParams();
  const renew = searchParam.get('renew');
  console.log('🚀 ~ renew:', renew);
  const contextItem = useOutletContext<ItemType>();
  // console.log('🚀 ~ contextItem:', contextItem);
  const item = (!renew && contextItem) || cart.find((item) => item.id === id);

  return (
    <>
      <h1 className='text-xl'>
        DetailLayout: {item?.id}. {item?.name}
      </h1>
      <div className='border-2 border-zinc-500 p-3'>
        <Outlet context={item} />
      </div>
    </>
  );
}
