import { cn } from '@/lib/utils';
import type { PropsWithChildren } from 'react';

type Prop = {
  onClick?: () => void;
  type?: 'reset' | 'submit';
  disabled?: boolean;
  className?: string;
};

export default function Btn({
  onClick,
  type,
  className,
  disabled,
  children,
}: PropsWithChildren<Prop>) {
  return (
    <button
      type={type}
      className={cn(
        `hover:bg-gray-100 border py-1 px-2 rounded-md cursor-pointer ${className}`
      )}
      onClick={onClick}
      disabled={disabled}
    >
      {children}
    </button>
  );
}
