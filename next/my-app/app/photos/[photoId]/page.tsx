'use cache';

import Image from 'next/image';
import Link from 'next/link';
import { blurDataURL_dark } from '@/app/(greetings)/hi/constants';
import type { Photo } from '../page';

type Props = {
  params: Promise<{ photoId: string }>;
};

// export const dynamic = 'force-static';

// 미리 generate한 페이지 외엔 404!
// export const dynamicParams = false;

export const generateStaticParams = async () => {
  const photos: Awaited<Photo[]> = await fetch(
    `https://picsum.photos/v2/list?limit=${10}`,
  ).then((res) => res.json());

  // [{photoId: '0'}, {photoId: '1'}, ... ]
  return photos.map(({ id: photoId }) => ({ photoId }));
};

export default async function PhotoView({ params }: Props) {
  const { photoId } = await params;
  // if (photoId > '10') notFound();
  const { author, download_url, width, height } = (await fetch(
    `https://picsum.photos/id/${photoId}/info`,
  ).then((res) => res.json())) as Photo;

  return (
    <>
      <h1>{author}</h1>
      <div>
        <Image
          src={download_url}
          alt={author}
          width={width}
          height={height}
          placeholder="blur"
          blurDataURL={blurDataURL_dark}
          // blurDataURL="/file.svg"
        />
        <Link href="/photos">List</Link>
      </div>
    </>
  );
}
