export const sum = (...args: number[]) => args.reduce((acc, n) => acc + n, 0);

type User = {
  id: number;
  username: string;
};

export const sumId = async () => {
  const users = (await fetch('https://jsonplaceholder.typicode.com/users').then(
    res => res.json()
  )) as User[];

  return users.reduce((acc, { id }) => acc + id, 0);
};
