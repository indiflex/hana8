import { type ItemType, useSession } from '@/hooks/SessionContext';
import { PlusIcon } from 'lucide-react';
import { useState } from 'react';
import { Outlet, useNavigate } from 'react-router-dom';
import Btn from './ui/Btn';
import { Button } from './ui/b';

export default function ItemLayout() {
  const {
    session: { cart },
  } = useSession();

  const navigate = useNavigate();
  const [item, setItem] = useState<ItemType>();

  return (
    <div className='w-full'>
      <div className='grid grid-cols-4 gap-2'>
        <div className='borderx'>
          <h2 className='text-xl mb-3'>Cart</h2>
          <ul className='ml-2'>
            {cart.map((item) => (
              <li key={item.id}>
                {/* <Link to={`${id}`}>{item.name}</Link> */}
                <Button
                  onClick={() => {
                    setItem(item);
                    navigate(`${item.id}`);
                  }}
                  variant={'link'}
                  className='h-4'
                >
                  {item.name}
                </Button>
              </li>
            ))}
            <li className='text-center'>
              <Btn onClick={() => navigate('0')} className=''>
                <PlusIcon />
              </Btn>
            </li>
          </ul>
        </div>

        <div className='col-span-3'>
          <h1 className='text-xl'>ItemsLayout</h1>
          <div className='border-2 p-3'>
            <Outlet context={item} />
          </div>
        </div>
      </div>
    </div>
  );
}
