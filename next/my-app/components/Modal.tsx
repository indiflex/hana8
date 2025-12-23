'use client';
import { useRouter } from 'next/navigation';
import { useEffect, useRef } from 'react';

export default function Modal({ children }: { children: React.ReactNode }) {
  const overlay = useRef<HTMLDivElement>(null);
  const wrapper = useRef<HTMLDivElement>(null);
  const router = useRouter();

  const onDismiss = () => router.back();

  const onClick = (e: PointerEvent) => {
    if (e.target === overlay.current || e.target === wrapper.current) {
      onDismiss();
    }
  };
  const onKeyDown = (e: KeyboardEvent) => {
    if (e.key === 'Escape') onDismiss();
  };

  useEffect(() => {
    if (overlay.current) overlay.current.addEventListener('click', onClick);
    document.addEventListener('keydown', onKeyDown);
    return () => {
      overlay.current?.removeEventListener('click', onClick);
      document.removeEventListener('keydown', onKeyDown);
    };
  }, [onKeyDown, overlay.current]);

  return (
    <div
      ref={overlay}
      className="fixed top-0 right-0 bottom-0 left-0 z-10 mx-auto bg-black/60 p-10"
    >
      <div
        ref={wrapper}
        className="-translate-x-1/2 -translate-y-1/2 absolute top-1/2 left-1/2 bg-white p-3 sm:w-10/12 md:w-8/12 lg:w-2/5"
      >
        <button
          onClick={onDismiss}
          className="absolute top-0 right-2 cursor-pointer text-slate-400 hover:scale-110 hover:text-slate-500"
        >
          x
        </button>
        <div className="bg-white">{children}</div>
      </div>
    </div>
  );
}
