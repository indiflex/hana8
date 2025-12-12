import type { PropsWithChildren } from 'react';

type Prop = {
  onClick?: () => void;
  className: string;
};

export default function Button({
  onClick,
  className,
  children,
}: PropsWithChildren<Prop>) {
  return (
    <button
      className={`border py-1 px-2 rounded-md cursor-pointer ${className}`}
      onClick={onClick}
    >
      {children}
    </button>
  );
}
