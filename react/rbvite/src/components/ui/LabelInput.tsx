import { useId, type ChangeEvent } from 'react';

type Props = {
  type?: string;
  label?: string;
  onChange?: (e: ChangeEvent<HTMLInputElement>) => void;
  placeholder?: string;
  className?: string;
};

export default function LabelInput({
  type,
  label,
  onChange,
  placeholder,
  className,
}: Props) {
  const inputId = useId();
  console.log('🚀 ~ inputId:', inputId);

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
        onChange={onChange}
        placeholder={placeholder}
        className={`w-full ${className}`}
        required
      />
    </div>
  );
}
