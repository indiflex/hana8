import { use } from 'react';

type Props = {
  params: Promise<{ time: 'morning' | 'afternoon' | 'evening' }>;
};

export async function generateStaticParams() {
  return [{ time: 'morning' }, { time: 'afternoon' }, { time: 'evening' }];
}

export default function Hi({ params }: Props) {
  const { time } = use(params);
  return (
    <h1>
      Good <span className="capitalize">{time}</span>!
    </h1>
  );
}
