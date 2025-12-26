'use client';

import { ChevronDownIcon, ChevronUpIcon } from 'lucide-react';
import { useActionState, useReducer, useState } from 'react';
import { Button } from '@/components/ui/button';
import { Checkbox } from '@/components/ui/checkbox';
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuLabel,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from '@/components/ui/dropdown-menu';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { Textarea } from '@/components/ui/textarea';
import { type PostError, savePost } from './posts.action';

type Folder = {
  id: number;
  name: string;
  type?: 'text' | 'file';
};

const FOLDERS: Folder[] = [
  { id: 1, name: '공지사항' },
  { id: 2, name: '자유게시판' },
  { id: 3, name: '앨범', type: 'file' },
];

export default function PostEdit() {
  const [isOpen, toggleOpen] = useReducer((p) => !p, false);
  const [folder, setFolder] = useState<Folder>(FOLDERS[0]);

  const [postError, save, isPending] = useActionState(
    async (_: PostError | undefined, formData: FormData) => {
      const [err, data] = await savePost(formData);
      if (err) return err;
      console.log('savedData>>', data);
    },
    undefined,
  );

  return (
    <>
      <h1 className="text-center font-semibold text-2xl">게시글 작성</h1>
      <form action={save} className="space-y-3">
        <div className="flex gap-2">
          <DropdownMenu onOpenChange={toggleOpen}>
            <DropdownMenuTrigger asChild>
              <Button variant={'outline'}>
                {folder.name}
                {isOpen ? <ChevronUpIcon /> : <ChevronDownIcon />}
              </Button>
            </DropdownMenuTrigger>
            <DropdownMenuContent>
              <DropdownMenuLabel>게시판 선택</DropdownMenuLabel>
              <DropdownMenuSeparator />
              {FOLDERS.map((folder) => (
                <DropdownMenuItem
                  key={folder.id}
                  onClick={() => setFolder(folder)}
                >
                  {folder.name}
                </DropdownMenuItem>
              ))}
            </DropdownMenuContent>
          </DropdownMenu>

          <Input type="text" name="title" placeholder="title..." />
        </div>

        <div className="flex gap-2">
          <Label htmlFor="isPrivate">
            <Checkbox id="isPrivate" name="isprivate" checked={true} />
            비공개 글
          </Label>
        </div>

        {folder.type === 'file' ? (
          <Input
            type="file"
            name="filex"
            className="cursor-pointer hover:bg-muted"
          />
        ) : (
          <Textarea name="content" placeholder="content..." />
        )}

        {!!postError && <span className="text-red-500">{postError.error}</span>}

        <div className="flex justify-around">
          <Button type="reset" variant={'secondary'}>
            취소
          </Button>
          <Button type="button" variant={'destructive'}>
            삭제
          </Button>
          <Button type="submit" variant={'apply'} disabled={isPending}>
            저장{isPending && '...'}
          </Button>
        </div>
      </form>
    </>
  );
}
