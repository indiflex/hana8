import { use } from 'react';
import { TIMES } from '../../../constants';

export const generateStaticParams = () =>
  TIMES.flatMap((time, i) =>
    [1, 2, 3].map((cmt) => ({ time, cmt: String(i * 3 + cmt) })),
  );

export default function CommentDetail({
  params,
}: {
  params: Promise<{ time: string; cmt: string }>;
}) {
  const { time, cmt } = use(params);
  return (
    <h1>
      {/* {JSON.stringify(generateStaticParamsX())} */}
      Comments - ${time} - ${cmt + 10}
    </h1>
  );
}
