import { cacheLife, cacheTag, revalidateTag, updateTag } from 'next/cache';

async function RandomValue() {
  'use cache';
  cacheLife({
    stale: 5,
    revalidate: 10,
  });
  cacheTag('random-value', 'math'); // tag등록!
  await new Promise((resolve) => setTimeout(resolve, 1000));
  console.log('***********', new Date());
  return Math.random();
}

export default function Page() {
  const revalidateRandom = async () => {
    'use server';
    // revalidateTag('random-value', 'hours');
    revalidateTag('random-value', { expire: 0 });
  };

  const updateRandom = async () => {
    'use server';
    updateTag('random-value'); // 또는 'math'
  };

  return (
    <>
      <p className="m-3 border p-3">
        <RandomValue />
      </p>
      <form>
        <button
          formAction={revalidateRandom}
          className="ml-3 rounded-md border p-3"
        >
          revalidateTag
        </button>

        <button
          formAction={updateRandom}
          className="ml-3 rounded-md border p-3"
        >
          updateTag
        </button>
      </form>
    </>
  );
}
