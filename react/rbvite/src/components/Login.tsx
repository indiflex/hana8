import Button from './ui/Button';

export default function Login() {
  return (
    <div className='border border-red-300 p-3 rounded-lg'>
      <h1 className='text-2xl text-center font-medium'>Login</h1>
      <form className='space-y-3'>
        <div>
          <label htmlFor='name' className='text-sm text-gray-600'>
            Name
          </label>
          <input
            type='text'
            id='name'
            placeholder='user name...'
            className='w-full'
          />
        </div>
        <div>
          <label htmlFor='age' className='text-sm text-gray-600'>
            Age
          </label>
          <input
            type='number'
            id='age'
            placeholder='user name...'
            className='w-full'
          />
        </div>

        <div className='text-center'>
          <Button className='bg-blue-500 text-white hover:bg-blue-600'>
            Login
          </Button>
        </div>
      </form>
    </div>
  );
}
