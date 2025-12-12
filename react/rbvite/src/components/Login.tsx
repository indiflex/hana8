import { useEffect, useRef, type FormEvent } from 'react';
import type { LoginFunction } from '../App';
import Button from './ui/Button';
import LabelInput from './ui/LabelInput';
type Props = {
  login: LoginFunction;
};
export default function Login({ login }: Props) {
  // const [name, setName] = useState('');
  // const [age, setAge] = useState(0);
  // console.log('🚀 ~ name/age:', name, age);

  const nameRef = useRef<HTMLInputElement>(null);
  const ageRef = useRef<HTMLInputElement>(null);

  const makeLogin = (e: FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    if (nameRef.current?.value && ageRef.current?.value) {
      login(nameRef.current.value, Number(ageRef.current.value));
    }
  };

  useEffect(() => {
    if (nameRef.current) nameRef.current.focus();
  }, []);

  return (
    <div className='border border-red-300 p-3 rounded-lg'>
      <h1 className='text-2xl text-center font-medium'>Login</h1>
      <form onSubmit={makeLogin} className='space-y-3'>
        <LabelInput label='Name' ref={nameRef} />
        <LabelInput
          type='number'
          ref={ageRef}
          // onChange={(e) => setAge(+e.target.value)}
          placeholder='Age...'
        />
        {/* <div>
          <label htmlFor='age' className='text-sm text-gray-600'>
            Age
          </label>
          <input
            type='number'
            id='age'
            ref={ageRef}
            // onChange={(e) => setAge(+e.target.value)}
            placeholder='user name...'
            className='w-full'
            required
          />
        </div> */}

        <div className='text-center'>
          <button type='reset'>Cancel</button>
          <Button
            // type='submit'
            // onClick={() => login(name, age)}
            className='bg-blue-500 text-white hover:bg-blue-600'
          >
            Login
          </Button>
        </div>
      </form>
    </div>
  );
}
