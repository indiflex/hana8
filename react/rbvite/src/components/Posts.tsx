import { useActionState, useOptimistic, useState } from 'react';
import { useFormStatus } from 'react-dom';
import Alerter from './ui/Alerter';
import Spinner from './ui/Spinner';
import { Button } from './ui/b';

type Post = { id: number; title: string; userId: number; body: string };
const searchPosts = (userId: string): Promise<Post[]> =>
  fetch(`https://jsonplaceholder.typicode.com/posts?userId=${userId}`).then(
    (res) => res.json()
  );

export default function Posts() {
  const [state, setState] = useState('');
  const [opticState, setOpticState] = useOptimistic(state);

  const [posts, search, isPending] = useActionState<Post[], FormData>(
    async (_posts, formData) => {
      const userId = formData.get('userId') as string;
      setState(userId);
      setOpticState(userId);
      return searchPosts(userId);
    },
    []
  );

  // const [posts, setPosts] = useState<Post[]>([]);
  // const [isPending, setPending] = useState(false);
  // const outTransition = async (formData: FormData) => {
  //   const userId = formData.get('userId') as string;
  //   if (!userId) return;
  //   setState(userId);
  //   // setOpticState(userId);
  //   setPending(true);
  //   const posts = await searchPosts(userId);
  //   setPending(false);
  //   setPosts(posts);
  // };

  return (
    <div className='border-2 border-red-500 p-3 rounded-md'>
      <h1 className='text-xl'>
        Posts - {state} :: {opticState}
      </h1>
      <form action={search}>
        {/* <form action={outTransition}> */}
        <input
          type='text'
          name='userId'
          // onChange={(e) => outTransition(e.target.value)}
          placeholder='userId...'
        />
        <SearchButton label='Search' inpName='userId' />
      </form>
      {isPending ? (
        <Spinner />
      ) : (
        <ul className='w-80 truncate'>
          {posts.map(({ id, title, body }) => (
            <li key={id}>
              <Alerter title={title} description={body}>
                <Button variant='ghost'>
                  {id}. {title}
                </Button>
              </Alerter>
            </li>
          ))}
        </ul>
      )}
    </div>
  );
}

function SearchButton({
  label = 'Search',
  inpName = '',
}: {
  label?: string;
  inpName?: string;
}) {
  const { pending, data } = useFormStatus();
  const searchStr = data?.get(inpName);

  return (
    <Button type='submit'>
      {pending ? `searching...${searchStr}` : label}
    </Button>
  );
}
