import {
  Edit2Icon,
  FilePlus2Icon,
  RotateCcwIcon,
  SaveIcon,
} from 'lucide-react';
import {
  useEffect,
  useRef,
  useState,
  type FormEvent,
  type RefObject,
} from 'react';
import {
  Link,
  Navigate,
  useNavigate,
  useParams,
  useSearchParams,
} from 'react-router-dom';
import { useSession } from '../hooks/SessionContext';
import Btn from './ui/Btn';
import LabelInput from './ui/LabelInput';
import Small from './ui/Small';
import { Button } from './ui/button';

export default function Item() {
  const {
    session: { cart },
  } = useSession();
  const navigate = useNavigate();
  // q=111&p=222
  const params = useParams<{ id: string }>();
  const id = Number(params.id);
  const [searchParam, setSearchParam] = useSearchParams({ q: '', p: 'xxx' });
  console.log('🚀 ~ searchParam:', Object.fromEntries(searchParam.entries()));

  const { removeItem, saveItem } = useSession();
  const [isEditing, setEditing] = useState(!id);
  const [hasDirty, setDirty] = useState(false);
  const nameRef = useRef<HTMLInputElement>(null);
  const priceRef = useRef<HTMLInputElement>(null);

  useEffect(() => {
    if (isEditing) nameRef.current?.focus();
    // setSearchParam('q=100');
    // setSearchParam({ q: '1000' });
  }, [isEditing]);

  const item = !id
    ? { id, name: '', price: 3000 }
    : cart.find((item) => item.id === id);
  if (!item) return <Navigate to={'/items'} />;

  const checkDirty = () => {
    setDirty(
      item.name !== nameRef.current?.value ||
        item.price !== Number(priceRef.current?.value)
    );
  };

  const editItem = (e: FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    const name = nameRef.current?.value;
    const price = priceRef.current?.value;
    let msg;
    let ref: RefObject<HTMLInputElement | null> | null = null;

    if (!name) {
      msg = 'Input the item name!';
      ref = nameRef;
    }

    if (!price) {
      ref = priceRef;
    }

    if (msg) {
      alert(msg);
      if (ref && ref.current) ref.current.focus();
      return;
    }

    const savedId = saveItem({
      id: item.id,
      name: name ?? '',
      price: Number(price),
    });

    // 정리작업..
    if (nameRef.current && priceRef.current) {
      nameRef.current.value = '';
      priceRef.current.value = '';
      nameRef.current.focus();
    }
    setEditing(false);
    setDirty(false);

    if (!id) navigate(`/items/${savedId}`, { replace: true });
  };

  const makeEdit = () => {
    setEditing(!isEditing);
  };

  const cancelEdit = () => {
    setEditing(!isEditing);
    // if (nameRef.current && priceRef.current) {
    //   nameRef.current.value = item.name;
    //   priceRef.current.value = String(item.price);
    // }
    if (!id) navigate('/items');
  };

  return (
    <>
      {isEditing ? (
        <form onSubmit={editItem} className='flex gap-1'>
          {/* <input type='number' ref={idRef} placeholder='id...' className='w-14' /> */}
          <LabelInput
            ref={nameRef}
            defaultValue={item.name}
            onChange={checkDirty}
            placeholder='name...'
          />
          <LabelInput
            type='number'
            ref={priceRef}
            defaultValue={item.price}
            onChange={checkDirty}
            placeholder='price...'
          />
          <Btn onClick={cancelEdit} type='reset' className=''>
            <RotateCcwIcon />
          </Btn>
          {hasDirty && (
            <Btn type='submit' className='text-blue-500' disabled={!hasDirty}>
              {item.id ? <SaveIcon /> : <FilePlus2Icon />}
            </Btn>
          )}
        </form>
      ) : (
        <>
          <Small>{item.id}.</Small>
          <Button variant={'link'} onClick={makeEdit} className='flex gap-2'>
            {item.name} <Edit2Icon size={14} />
          </Button>
          <Small>{item.price.toLocaleString()}원</Small>

          <div className='flex gap-5'>
            <Link to='/items'>GoList</Link>
            <Btn
              onClick={() => {
                if (removeItem) removeItem(item.id);
              }}
              className='ml-2 px-1 py-0 text-sm bg-red-500 hover:bg-red-600 text-white shadow-lg hover:shadow-2xl active:scale-150 transition duration-300'
            >
              X
            </Btn>
          </div>
        </>
      )}
    </>
  );
}
