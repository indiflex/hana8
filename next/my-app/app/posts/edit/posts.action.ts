'use server';
export type Post = {
  title: string;
  content: string;
  isprivate: boolean;
};

export type PostError = { error: string };

export const savePost = async (
  formData: FormData,
): Promise<[PostError] | [undefined, Post]> => {
  console.log('savePost>>', Object.fromEntries(formData.entries()));

  await new Promise((resolve) => setTimeout(resolve, 1000));

  const title = formData.get('title') as string;
  const isprivate = formData.get('isprivate') === 'on';
  const content = formData.get('content') as string;

  if (!title) return [{ error: 'Input the title!' }];

  return [undefined, { title, content, isprivate }];
};
