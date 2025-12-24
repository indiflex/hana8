import Image from 'next/image';
import { use } from 'react';
import { blurDataURL } from '@/app/(greetings)/hi/constants';
import Modal from '@/components/Modal';
import type { Photo } from '../../../page';

type Props = {
  params: Promise<{ photoId: string }>;
};

export const generateStaticParams = async () => {
  const photos: Awaited<Photo[]> = await fetch(
    `https://picsum.photos/v2/list?limit=${10}`,
  ).then((res) => res.json());

  // [{photoId: '0'}, {photoId: '1'}, ... ]
  return photos.map(({ id: photoId }) => ({ photoId }));
};

export default function PhotoView({ params }: Props) {
  const { photoId } = use(params);
  const { author, download_url, width, height } = use(
    fetch(`https://picsum.photos/id/${photoId}/info`).then((res) => res.json()),
  ) as Photo;

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
