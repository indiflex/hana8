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
    <button className={` ${className}`} onClick={onClick}>
      {children}
    </button>
  );
}
