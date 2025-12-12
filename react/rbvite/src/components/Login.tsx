import { useState } from 'react';
import type { LoginFunction } from '../App';
import Button from './ui/Button';
import LabelInput from './ui/LabelInput';
type Props = {
  login: LoginFunction;
};
export default function Login({ login }: Props) {
  const [name, setName] = useState('');
  const [age, setAge] = useState(0);

  return (
    <div className='border border-red-300 p-3 rounded-lg'>
      <h1 className='text-2xl text-center font-medium'>Login</h1>
      <form className='space-y-3'>
        <LabelInput label='Name' onChange={(e) => setName(e.target.value)} />
        <LabelInput
          type='number'
          onChange={(e) => setAge(+e.target.value)}
          placeholder='Age...'
        />
        {/* <div>
          <label htmlFor='age' className='text-sm text-gray-600'>
            Age
          </label>
          <input
            type='number'
            id='age'
            onChange={(e) => setAge(+e.target.value)}
            placeholder='user name...'
            className='w-full'
            required
          />
        </div> */}

        <div className='text-center'>
          <Button
            onClick={() => login(name, age)}
            className='bg-blue-500 text-white hover:bg-blue-600'
          >
            Login
          </Button>
        </div>
      </form>
    </div>
  );
}
