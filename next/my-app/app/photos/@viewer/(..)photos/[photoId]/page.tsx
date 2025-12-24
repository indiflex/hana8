'use cache';

import Image from 'next/image';
import { blurDataURL } from '@/app/(greetings)/hi/constants';
import Modal from '@/components/Modal';
import type { Photo } from '../../../page';

type Props = {
  params: Promise<{ photoId: string }>;
};

// export const dynamicParams = false;

export const generateStaticParams = async () => {
  const photos: Awaited<Photo[]> = await fetch(
    `https://picsum.photos/v2/list?limit=${20}`,
  ).then((res) => res.json());

  // [{photoId: '0'}, {photoId: '1'}, ... ]
  return photos.map(({ id: photoId }) => ({ photoId }));
};

export default async function PhotoView({ params }: Props) {
  const { photoId } = await params;
  const { author, download_url, width, height } = (await fetch(
    `https://picsum.photos/id/${photoId}/info`,
  ).then((res) => res.json())) as Photo;

  return (
    <Modal>
      <div>
        <Image
          src={download_url}
          alt={author}
          width={width}
          height={height}
          placeholder="blur"
          blurDataURL={blurDataURL}
        />
      </div>
    </Modal>
  );
}
