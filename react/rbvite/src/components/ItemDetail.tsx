import type { ItemType } from '@/hooks/SessionContext';
import { Link, useOutletContext } from 'react-router-dom';

export default function ItemDetail() {
  const item = useOutletContext<ItemType>();
  return (
    <>
      <h1 className='text-lg'>
        {item.id}. <strong>{item.name}</strong> : {item.price.toLocaleString()}
        원
      </h1>
      <div className='flex gap-10 justify-center mt-3'>
        <Link to='/items'>List</Link>
        <Link to='edit'>Edit</Link>
      </div>
    </>
  );
}
