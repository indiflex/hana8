import { useId, type ChangeEvent, type RefObject } from 'react';

type Props = {
  type?: string;
  label?: string;
  ref?: RefObject<HTMLInputElement | null>;
  defaultValue?: string | number;
  onChange?: (e: ChangeEvent<HTMLInputElement>) => void;
  placeholder?: string;
  className?: string;
  required?: boolean;
  autoComplete?: '' | 'off' | 'email' | 'tel';
};

export default function LabelInput({
  type,
  label,
  ref,
  onChange,
  defaultValue,
  placeholder,
  className,
  required,
  autoComplete,
}: Props) {
  const inputId = useId();
  // console.log('🚀 ~ inputId:', inputId);

  return (
    <div>
      {label && (
        <label htmlFor={inputId} className='text-sm text-gray-600'>
          {label}
        </label>
      )}
      <input
        type={type || 'text'}
        id={inputId}
        name={label}
        ref={ref}
        defaultValue={defaultValue}
        onChange={onChange}
        placeholder={placeholder}
        className={`w-full ${className}`}
        required={required}
        autoComplete={autoComplete}
      />
    </div>
  );
}
