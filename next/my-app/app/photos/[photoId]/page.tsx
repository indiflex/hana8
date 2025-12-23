import Image from 'next/image';
import { use } from 'react';
import type { Photo } from '../page';

type Props = {
  params: Promise<{ photoId: string }>;
};

export default function PhotoView({ params }: Props) {
  const { photoId } = use(params);
  const { author, download_url, width, height } = use(
    fetch(`https://picsum.photos/id/${photoId}/info`).then((res) => res.json()),
  ) as Photo;

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
          blurDataURL="/file.svg"
        />
      </div>
    </>
  );
}
