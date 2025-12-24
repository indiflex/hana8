'use client';

import { useParams } from 'next/navigation';

// export const generateStaticParams = async () => [{ id: '0' }];
export default function HelloId() {
  const { id } = useParams<{ id: string }>();
  return `Hello id is ${id}`;
}

// type Props = {
//   params: Promise<{ id: number }>;
// };

// export default function HelloId({ params }: Props) {
//   // const { id } = await params;
//   const { id } = use(params);
//   return `Hello id is ${id}`;
// }
