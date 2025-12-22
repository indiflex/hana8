import type { PropsWithChildren } from 'react';

export default function HelloTemplate({ children }: PropsWithChildren) {
  return (
    <>
      <h1>Hello Template</h1>
      <div className="border p-5 text-center">{children}</div>
    </>
  );
}
