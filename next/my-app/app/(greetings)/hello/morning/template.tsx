import type { PropsWithChildren } from 'react';

export default function MorningTemplate({ children }: PropsWithChildren) {
  return (
    <>
      <h1>Morning Template</h1>
      <div className="border p-5 text-center">{children}</div>
    </>
  );
}
