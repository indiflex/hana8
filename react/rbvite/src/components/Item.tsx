import { FilePlus2Icon } from 'lucide-react';
import { useRef, useState, type FormEvent, type RefObject } from 'react';
import type { ItemType } from '../App';
import Button from './ui/Button';
import LabelInput from './ui/LabelInput';
import Small from './ui/Small';

type Props = {
  item: ItemType;
  removeItem: (id: number) => void;
  // saveItem: (id: number, name: string, price: number) => void;
  // saveItem: (item: Item) => void;
  saveItem: ({ id, name, price }: ItemType) => void;
};

export default function Item({ item, removeItem, saveItem }: Props) {
  const [isEditing, setEditing] = useState(false);
  const [hasDirty, setDirty] = useState(false);
  const nameRef = useRef<HTMLInputElement>(null);
  const priceRef = useRef<HTMLInputElement>(null);

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

    saveItem({ id: 0, name: name ?? '', price: Number(price) });

    if (nameRef.current && priceRef.current) {
      nameRef.current.value = '';
      priceRef.current.value = '';
      nameRef.current.focus();
    }
  };

  return (
    <>
      <Small>{item.id}.</Small> {item.name}
      <Small>{item.price.toLocaleString()}원</Small>
      <Button
        onClick={() => removeItem(item.id)}
        className='ml-2 px-1 py-0 text-sm bg-red-500 hover:bg-red-600 text-white shadow-lg hover:shadow-2xl active:scale-150 transition duration-300'
      >
        X
      </Button>
      <form onSubmit={editItem} className='flex gap-1'>
        {/* <input type='number' ref={idRef} placeholder='id...' className='w-14' /> */}
        <LabelInput ref={nameRef} placeholder='name...' />
        <LabelInput type='number' ref={priceRef} placeholder='price...' />
        <Button type='submit' className='text-blue-500'>
          {/* <SaveIcon /> */}
          <FilePlus2Icon />
        </Button>
      </form>
    </>
  );
}
