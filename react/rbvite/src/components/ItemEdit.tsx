import { useSession, type ItemType } from '@/hooks/SessionContext';
import {
  FilePlus2Icon,
  RotateCcwIcon,
  SaveIcon,
  Trash2Icon,
} from 'lucide-react';
import {
  useEffect,
  useRef,
  useState,
  type FormEvent,
  type RefObject,
} from 'react';
import { useNavigate, useOutletContext } from 'react-router-dom';
import Btn from './ui/Btn';
import { Button } from './ui/button';
import LabelInput from './ui/LabelInput';

export default function ItemEdit() {
  const navigate = useNavigate();
  const item = useOutletContext<ItemType>();

  const { removeItem, saveItem } = useSession();
  const [hasDirty, setDirty] = useState(false);
  const nameRef = useRef<HTMLInputElement>(null);
  const priceRef = useRef<HTMLInputElement>(null);

  useEffect(() => {
    nameRef.current?.focus();
  }, []);

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
    setDirty(false);

    navigate(`/items/${savedId}`);
  };

  const cancelEdit = () => {
    // if (nameRef.current && priceRef.current) {
    //   nameRef.current.value = item.name;
    //   priceRef.current.value = String(item.price);
    // }
    navigate(`/items/${item.id}`);
  };

  const deleteItem = () => {
    console.log('*******>>', item.id);
    removeItem(item.id);
    navigate('/items');
  };

  return (
    <>
      <h1 className='text-lg'>ItemEdit: {item?.name}</h1>
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
        <Button onClick={deleteItem} variant={'destructive'}>
          <Trash2Icon />
        </Button>
        {hasDirty && (
          <Btn type='submit' className='text-blue-500' disabled={!hasDirty}>
            {item.id ? <SaveIcon /> : <FilePlus2Icon />}
          </Btn>
        )}
      </form>
    </>
  );
}
