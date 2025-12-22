import { type PropsWithChildren, Suspense } from 'react';

export default function HelloTemplate({ children }: PropsWithChildren) {
  return (
    <>
      <h1>Hello Template</h1>
      <Suspense fallback={'...'}>
        <div className="border p-5 text-center">{children}</div>
      </Suspense>
    </>
  );
}
