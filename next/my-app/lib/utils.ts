import { type ClassValue, clsx } from 'clsx';
import { twMerge } from 'tailwind-merge';

export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs));
}

export const dynamicCss = [
  'data-[state=checked]:bg-primary',
  'data-[state=checked]:border-primay',
  'data-[state=checked]:text-primary-foreground',
  'data-[state=checked]:text-white',
  'data-[state=checked]:bg-destructive',
  'data-[state=checked]:border-destructive',
  'data-[state=checked]:text-destructive-foreground',
  'data-[state=checked]:bg-secondary',
  'data-[state=checked]:border-secondary',
  'data-[state=checked]:text-secondary-foreground',
  'data-[state=checked]:bg-muted',
  'data-[state=checked]:border-muted',
  'data-[state=checked]:text-muted-foreground',
  'bg-red-900',
  'bg-blue-900',
];
