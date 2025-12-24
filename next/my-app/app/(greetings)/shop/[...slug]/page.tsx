import { use } from 'react';

type Props = {
  params: Promise<{ slug: number[] | string[] }>;
};

// shop/X
export const generateStaticParams = async () => [{ slug: ['X'] }];

export default function Shop({ params }: Props) {
  const { slug } = use(params);

  return <>Slugs: {JSON.stringify(slug)}</>;
}
