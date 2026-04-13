'use server';
export type Post = {
  folder: number;
  title: string;
  content: string;
  isprivate: boolean;
  ispublic: boolean;
};

export type PostError = { error: string; data: Partial<Post> };

export const savePost = async (
  formData: FormData,
): Promise<[PostError] | [undefined, Post]> => {
  console.log('savePost>>', Object.fromEntries(formData.entries()));

  await new Promise((resolve) => setTimeout(resolve, 1000));

  const folder = Number(formData.get('folder'));
  const title = formData.get('title') as string;
  const isprivate = formData.get('isprivate') === 'on';
  const ispublic = formData.get('ispublic') === 'on';
  const content = formData.get('content') as string;
  const data = { folder, title, content, isprivate, ispublic };

  if (!title) return [{ error: 'Input the title!', data }];

  return [undefined, data];
};
