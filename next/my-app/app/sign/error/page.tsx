import { use } from 'react';

type Props = {
  searchParams: Promise<{ error: string }>;
};

export default function SignError({ searchParams }: Props) {
  const { error } = use(searchParams);
  return (
    <>
      <h1 className="text-2xl">Sing Error</h1>
      <div className="text-red-500">Error: {error}</div>
    </>
  );
}
