export const sum = (...args: number[]) => args.reduce((acc, n) => acc + n, 0);

type User = {
  id: number;
  username: string;
};

export const sumId = async () => {
  const users = (await fetch('https://jsonplaceholder.typicode.com/users').then(
    res => res.json()
  )) as User[];
  // console.log('🚀 sumId - users:', users);

  return users.reduce((acc, { id }) => acc + id, 0);
};

export const fetchUser = async (userId: number) => {
  const user: User = await fetch(
    `https://jsonplaceholder.typicode.com/users/${userId}`
  ).then(res => res.json());
  // console.log('🚀 ~ user:', user);
  if (!user.id) throw new Error(`#${userId} User Not Found!`);
  const { id, username } = user;
  return { id, username };
};
