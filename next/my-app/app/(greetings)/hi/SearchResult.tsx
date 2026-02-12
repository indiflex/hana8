'use client';

import { LoaderCircleIcon } from 'lucide-react';
import Link from 'next/link';
import { useEffect, useState, useTransition } from 'react';
import { useQueryAndYear } from './search-params';

const TIMES = ['morning', 'afternoon', 'evening', 'night'];
const search = async (query: string): Promise<string[]> =>
  new Promise((resolve) => {
    const rets = TIMES.filter((time) => time.includes(query));
    setTimeout(resolve, 500, rets);
  });

export default function SearchResult() {
  const [isPending, startTransition] = useTransition();
  const [{ query, year }] = useQueryAndYear();

  const [times, setTimes] = useState<string[]>([]);
  useEffect(() => {
    startTransition(async () => {
      const times = await search(query);
      setTimes(times);
    });
  }, [query, year]);

  return (
    <div className="flex items-center">
      {isPending ? (
        <LoaderCircleIcon className="ml-9 animate-spin" />
      ) : (
        <ul className="mx-3">
          {times.map((time) => (
            <li key={time}>
              <Link href={`/hi/${time}`}>
                {time} ({year})
              </Link>
            </li>
          ))}
        </ul>
      )}
    </div>
  );
}
