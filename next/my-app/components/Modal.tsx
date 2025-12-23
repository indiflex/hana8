'use client';
import { useRouter } from 'next/navigation';
import { type MouseEventHandler, useEffect, useRef } from 'react';

export default function Modal({ children }: { children: React.ReactNode }) {
  const overlay = useRef(null);
  const wrapper = useRef(null);
  const router = useRouter();

  const onDismiss = () => router.back();

  const onClick: MouseEventHandler = (e) => {
    if (e.target === overlay.current || e.target === wrapper.current) {
      onDismiss();
    }
  };
  const onKeyDown = (e: KeyboardEvent) => {
    if (e.key === 'Escape') onDismiss();
  };

  useEffect(() => {
    console.log('*********************');
    document.addEventListener('keydown', onKeyDown);
    return () => document.removeEventListener('keydown', onKeyDown);
  }, [onKeyDown]);

  return (
    // biome-ignore lint/a11y/noStaticElementInteractions: click하면 close!
    // biome-ignore lint/a11y/useKeyWithClickEvents: click하면 close!
    <div
      ref={overlay}
      className="fixed top-0 right-0 bottom-0 left-0 z-10 mx-auto bg-black/60 p-10"
      onClick={onClick}
    >
      <div
        ref={wrapper}
        className="-translate-x-1/2 -translate-y-1/2 absolute top-1/2 left-1/2 p-6 sm:w-10/12 md:w-8/12 lg:w-2/5"
      >
        <div className="bg-white">{children}</div>
      </div>
    </div>
  );
}
