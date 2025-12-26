'use server';

export const savePost = async (formData: FormData) => {
  console.log(Object.fromEntries(formData.entries()));
};
