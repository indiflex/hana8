'use client';

import { useId, useReducer } from 'react';
import { cn } from '@/lib/utils';
import { Checkbox } from './ui/checkbox';
import { Label } from './ui/label';
import { Switch } from './ui/switch';

type Props = {
  type?: 'switch' | 'check';
  name?: string;
  label?: string;
  checked?: boolean;
  variant?: 'default' | 'destructive' | 'secondary' | 'muted';
  setCheckedAction?: (checked: boolean) => void;
};

const setClassnames = (variant: Props['variant'] | 'primary') => [
  `border-${variant}`,
  `bg-${variant}`,
  `text-${variant}-foreground`,
];

const CheckVariant = {
  default: setClassnames('primary'),
  destructive: [...setClassnames('destructive'), 'text-white'],
  secondary: setClassnames('secondary'),
  muted: setClassnames('muted'),
};

export default function CheckSwitch({
  type = 'check',
  name,
  label,
  checked,
  variant = 'default',
  setCheckedAction,
}: Props) {
  const checkId = useId();
  const [isCheck, toggleCheck] = useReducer((p) => !p, !!checked);

  const css = CheckVariant[variant];
  console.log('*******', css);

  const Compo = type === 'switch' ? Switch : Checkbox;

  return (
    <Label
      htmlFor={checkId}
      className="cursor-pointer text-secondary-foreground"
    >
      <Compo
        id={checkId}
        checked={isCheck}
        onClick={() => {
          toggleCheck();
          if (setCheckedAction) setCheckedAction(!isCheck);
        }}
        // className="data-[state=checked]:border-secondary data-[state=checked]:bg-destructive data-[state=checked]:text-destructive-foreground data-[state=checked]:text-white"
        className={cn(css.map((cs) => `data-[state=checked]:${cs}`))}
      />
      {label}{' '}
      {!!name && (
        <input type="hidden" name={name} defaultValue={isCheck ? 'on' : ''} />
      )}{' '}
    </Label>
  );
}
