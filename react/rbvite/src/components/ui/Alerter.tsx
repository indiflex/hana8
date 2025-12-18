import {
  AlertDialog,
  AlertDialogAction,
  AlertDialogCancel,
  AlertDialogContent,
  AlertDialogDescription,
  AlertDialogFooter,
  AlertDialogHeader,
  AlertDialogTitle,
  AlertDialogTrigger,
} from '@/components/ui/alert-dialog';
import type { PropsWithChildren } from 'react';

type Props = {
  title: string;
  description?: string;
  okText?: string;
  cancelText?: string;
};
export default function Alerter({
  title,
  description,
  okText = 'Continue',
  cancelText = 'Cancel',
  children,
}: PropsWithChildren<Props>) {
  return (
    <AlertDialog>
      <AlertDialogTrigger asChild>{children}</AlertDialogTrigger>
      <AlertDialogContent>
        <AlertDialogHeader>
          <AlertDialogTitle>{title}</AlertDialogTitle>
          {!!description && (
            <AlertDialogDescription>{description}</AlertDialogDescription>
          )}
        </AlertDialogHeader>
        <AlertDialogFooter>
          <div className='flex justify-center gap-4'>
            <AlertDialogCancel className='w-32'>{cancelText}</AlertDialogCancel>
            <AlertDialogAction className='w-[50%]'>{okText}</AlertDialogAction>
          </div>
        </AlertDialogFooter>
      </AlertDialogContent>
    </AlertDialog>
  );
}
