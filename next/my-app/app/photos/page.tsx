'use cache';
import { cacheLife } from 'next/cache';
import Image from 'next/image';
import Link from 'next/link';

export type Photo = {
  id: string;
  author: string;
  download_url: string;
  width: number;
  height: number;
};

// export const revalidate = 86400; // 1 day

const getPhotos = async (n: number = 20): Promise<Photo[]> =>
  fetch(`https://picsum.photos/v2/list?limit=${n}`, {
    cache: 'force-cache',
  }).then((res) => res.json());

export default async function Photos() {
  // cacheLife('days'); // 5min - 1day - 1week
  cacheLife({
    stale: 5,
    revalidate: 86400,
  });
  const photos = await getPhotos();

  return (
    <div className="flex flex-wrap justify-center gap-3">
      {photos.map(({ id, author, download_url }) => (
        <Link
          key={id}
          href={`/photos/${id}`}
          className="opacity-80 duration-200 hover:scale-105 hover:opacity-100"
        >
          <Image
            src={download_url}
            alt={author}
            width={200}
            height={300}
            quality={75}
            loading="lazy"
          />
        </Link>
      ))}
    </div>
  );
}
