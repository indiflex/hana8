'use client';

import { ChevronDownIcon, ChevronUpIcon } from 'lucide-react';
import { useActionState, useReducer, useState } from 'react';
import CheckSwitch from '@/components/CheckSwitch';
import { Button } from '@/components/ui/button';
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuLabel,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from '@/components/ui/dropdown-menu';
import { Input } from '@/components/ui/input';
import { Textarea } from '@/components/ui/textarea';
import { type Post, type PostError, savePost } from './posts.action';

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
  const [post, setPost] = useState<Partial<Post>>();
  // const [localPrivate, togglePrivate] = useReducer((p) => !p, false);
  // const [localPublic, togglePublic] = useReducer((p) => !p, false);
  const [isShowButtons, setShowButtons] = useState(false);

  const [postError, save, isPending] = useActionState(
    async (_: PostError | undefined, formData: FormData) => {
      // formData.set('isprivate', localPrivate ? 'on' : '');
      // console.log('fff>>', formData.get('isprivate'));
      const [err, data] = await savePost(formData);
      if (err) {
        setPost(err.data);
        return err;
      }

      setPost(data);
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
          <Input type="hidden" name="folder" defaultValue={folder.id} />

          <Input
            type="text"
            name="title"
            defaultValue={post?.title}
            className="bg-muted"
            placeholder="title..."
          />
        </div>

        <div className="grid grid-cols-2 gap-2">
          {/* <Label htmlFor="isPrivate">
            <Checkbox
              id="isPrivate"
              name="isprivate"
              checked={localPrivate}
              onClick={togglePrivate}
              className="data-[state=checked]:bg-blue-500"
            />
            비공개 글 {post?.isprivate ? 'True' : 'False'}::
            {localPrivate ? 'True' : 'False'}
          </Label> */}

          <CheckSwitch
            label="default"
            name="isprivate"
            checked={post?.isprivate}
            setCheckedAction={setShowButtons}
          />
          <CheckSwitch
            label="destructive"
            name="isprivate"
            checked={post?.isprivate}
            variant="destructive"
            setCheckedAction={setShowButtons}
          />
          <CheckSwitch
            label="secondary"
            name="isprivate"
            checked={post?.isprivate}
            variant="secondary"
            setCheckedAction={setShowButtons}
          />
          <CheckSwitch
            label="muted"
            name="isprivate"
            checked={post?.isprivate}
            variant="muted"
            setCheckedAction={setShowButtons}
          />

          <CheckSwitch label="홈에 공개" type="switch" name="ispublic" />
          <CheckSwitch
            label="secondary"
            type="switch"
            variant="secondary"
            name="ispublic"
          />
          <CheckSwitch
            label="destructive"
            type="switch"
            variant="destructive"
            name="ispublic"
          />
          <CheckSwitch
            label="muted"
            type="switch"
            variant="muted"
            name="ispublic"
          />
        </div>

        {folder.type === 'file' ? (
          <Input
            type="file"
            name="filex"
            className="cursor-pointer hover:bg-muted"
          />
        ) : (
          <Textarea
            name="content"
            defaultValue={post?.content}
            placeholder="content..."
            className={`bg-${post?.isprivate ? 'red-900' : 'blue-900'}`}
          />
        )}

        {!!postError && <span className="text-red-500">{postError.error}</span>}

        {isShowButtons && (
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
        )}
      </form>
    </>
  );
}
