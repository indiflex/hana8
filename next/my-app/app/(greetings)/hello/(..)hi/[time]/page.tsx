import { use } from 'react';

type Props = {
  params: Promise<{ time: 'morning' | 'afternoon' | 'evening' }>;
};

export default function Hi({ params }: Props) {
  const { time } = use(params);
  return (
    <h1>
      Hello/(..)hi - <span className="capitalize">{time}</span>!
    </h1>
  );
}
