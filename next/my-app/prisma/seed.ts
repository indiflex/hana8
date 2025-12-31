import { prisma } from '@/lib/prisma';

async function main() {
  const folder = await prisma.folder.upsert({
    where: { title: 'JS/TS' },
    update: {},
    create: { title: 'JS/TS' },
  });
  console.log('🚀 ~ folder:', folder);

  for (const { name, title } of data) {
    const email = `${name}@email.com`;
    const rs = await prisma.user.upsert({
      where: { email },
      update: {},
      create: {
        name,
        email,
        Post: { create: { folder: folder.id, title, content: title } },
      },
    });
    console.log('🚀 ~ rs:', rs);
  }
}

const data = [
  {
    name: 'hong',
    title: 'post1',
  },
  {
    name: 'kim',
    title: 'post2',
  },
];

main()
  .then(async () => {
    await prisma.$disconnect();
  })
  .catch(async (e) => {
    console.error('PrismaError>>', e);
    await prisma.$disconnect();
    process.exit(1);
  });
