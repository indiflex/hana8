import Link from 'next/link';
import QueryYear from './QueryYear';
import SearchResult from './SearchResult';
import { createHiLinks, loadSearchParams } from './search-params';

export default async function Hi({ searchParams }: PageProps<'/hi'>) {
  const { query, year } = await loadSearchParams(searchParams);
  console.log('🚀 page - query:', query, year);

  return (
    <>
      <h1>Hi~ {new Date().toLocaleString()}</h1>
      <QueryYear />
      <div className="grid grid-cols-2">
        <SearchResult />

        <ul className="border">
          <li className="font-semibold">Favorites</li>
          <li>
            <Link href={`/hi?query=morn&year=2026`}>Morning</Link>
          </li>
          <li>
            <Link href={createHiLinks({ query: 'ing', year: 2026 })}>
              Morning & Evening
            </Link>
          </li>
          <li>
            <Link href={createHiLinks({ query: 'n', year: 2026 })}>
              All Time
            </Link>
          </li>
        </ul>
      </div>
    </>
  );
}
