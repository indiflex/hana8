import type { PropsWithChildren } from 'react';

type Prop = {
  onClick?: () => void;
  type?: 'reset' | 'submit';
  className: string;
};

export default function Button({
  onClick,
  type,
  className,
  children,
}: PropsWithChildren<Prop>) {
  return (
    <button type={type} className={`${className}`} onClick={onClick}>
      {children}
    </button>
  );
}
