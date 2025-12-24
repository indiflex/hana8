import { use } from 'react';

export const generateStaticParams = async () => [{ time: 'morningX' }];
export default function Comments({
  params,
}: {
  params: Promise<{ time: string }>;
}) {
  const { time } = use(params);
  return `Comments - ${time}`;
}
