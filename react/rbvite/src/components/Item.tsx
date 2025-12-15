import { FilePlus2Icon, RotateCcwIcon, SaveIcon } from 'lucide-react';
import { useRef, useState, type FormEvent, type RefObject } from 'react';
import { useSession, type ItemType } from '../hooks/SessionContext';
import Button from './ui/Button';
import LabelInput from './ui/LabelInput';
import Small from './ui/Small';

type Props = {
  item: ItemType;
  toggleAdding?: () => void;
};

export default function Item({ item, toggleAdding }: Props) {
  const { removeItem, saveItem } = useSession();
  const [isEditing, setEditing] = useState(!item.id);
  const [hasDirty, setDirty] = useState(false);
  const nameRef = useRef<HTMLInputElement>(null);
  const priceRef = useRef<HTMLInputElement>(null);

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
      // alert('Input the item name!');
      // nameRef.current?.focus();
      msg = 'Input the item name!';
      ref = nameRef;
    }

    if (!price) {
      // alert('Input the item price!');
      // priceRef.current?.focus();
      ref = priceRef;
    }

    if (msg) {
      alert(msg);
      if (ref && ref.current) ref.current.focus();
      return;
    }

    saveItem({ id: item.id, name: name ?? '', price: Number(price) });

    // 정리작업..
    if (nameRef.current && priceRef.current) {
      nameRef.current.value = '';
      priceRef.current.value = '';
      nameRef.current.focus();
    }
    setEditing(false);
    setDirty(false);
    if (toggleAdding) toggleAdding();
  };

  const makeEdit = () => {
    setEditing(!isEditing);
  };

  const cancelEdit = () => {
    setEditing(!isEditing);
    if (nameRef.current && priceRef.current) {
      nameRef.current.value = item.name;
      priceRef.current.value = String(item.price);
    }

    if (toggleAdding) toggleAdding();
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
          <Button onClick={cancelEdit} type='reset' className=''>
            <RotateCcwIcon />
          </Button>
          {hasDirty && (
            <Button
              type='submit'
              className='text-blue-500'
              disabled={!hasDirty}
            >
              {item.id ? <SaveIcon /> : <FilePlus2Icon />}
            </Button>
          )}
        </form>
      ) : (
        <>
          <Small>{item.id}.</Small>
          <button
            onClick={makeEdit}
            className='border-0 p-0 hover:bg-inherit hover:underline'
          >
            {item.name}
          </button>
          <Small>{item.price.toLocaleString()}원</Small>
          <Button
            onClick={() => {
              if (removeItem) removeItem(item.id);
            }}
            className='ml-2 px-1 py-0 text-sm bg-red-500 hover:bg-red-600 text-white shadow-lg hover:shadow-2xl active:scale-150 transition duration-300'
          >
            X
          </Button>
        </>
      )}
    </>
  );
}
