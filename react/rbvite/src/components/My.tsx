import { useActionState, useEffect, useMemo, useState } from 'react';
import { useFormStatus } from 'react-dom';
import { useSession, type ItemType } from '../hooks/SessionContext';
import { useInterval } from '../hooks/useTimer';
import LabelInput from './ui/LabelInput';
import Spinner from './ui/Spinner';
import { Button } from './ui/button';

export default function My() {
  const { session } = useSession();

  const [badSec, setBadSec] = useState(0);
  const [goodSec, setGoodSec] = useState(0);

  useEffect(() => {
    setInterval(() => setBadSec((p) => p + 1), 1000);
  }, []);

  const ff = () => {
    setGoodSec((p) => p + 1);
  };
  const { reset, clear } = useInterval(ff, 1000);

  const totalPrice = useMemo(
    () => session.cart.reduce((acc, item) => acc + item.price, 0),
    [session.cart]
  );

  const [results, search, isPending] = useActionState(
    async (preResults: ItemType[], formData: FormData) => {
      const str = formData.get('ActionState') as string;
      console.log('******', preResults, str);
      await new Promise((resolve) => setTimeout(resolve, 1500));
      return session.cart.filter((item) => item.name.includes(str));
    },
    []
  );

  return (
    <>
      <h1 className='text-xl'>
        bad: {badSec}, good: {goodSec}
      </h1>
      <div className='flex space-x-3'>
        <Button
          variant={'outline'}
          onClick={() => {
            setGoodSec(0);
            reset();
          }}
        >
          reset
        </Button>
        <Button variant={'secondary'} onClick={clear}>
          stop
        </Button>
      </div>
      <hr />

      <h2 className='text-xl'>Tot: {totalPrice.toLocaleString()}원</h2>

      {isPending ? (
        <Spinner />
      ) : (
        <div>SR_ActionState :{results.map((item) => item.name).join()}</div>
      )}

      {/* <form action={search}> */}
      <form className='flex gap-2 items-end'>
        <LabelInput label='ActionState' autoComplete='off' />
        <Button formAction={search}>Action</Button>
        <SearchButton />
      </form>
    </>
  );
}

function SearchButton() {
  const { pending, data } = useFormStatus();
  if (data) console.log('ddddddd>>', data, pending);
  return (
    <Button variant={'secondary'} disabled={pending}>
      SearchButton
    </Button>
  );
}
