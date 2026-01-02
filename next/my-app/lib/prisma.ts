import { PrismaMariaDb } from '@prisma/adapter-mariadb';
import 'dotenv/config';
import { PrismaClient } from './generated/prisma/client';

const adapter = new PrismaMariaDb({
  host: process.env.DATABASE_HOST,
  port: Number(process.env.DATABASE_PORT),
  user: process.env.DATABASE_USER,
  password: process.env.DATABASE_PASSWORD,
  database: process.env.DATABASE_NAME,
  connectionLimit: 5,
});

// HMR(Hot Module Replacer)
const newInstance = () => new PrismaClient({ adapter });

// biome-ignore lint/suspicious/noShadowRestrictedNames: 'prisma single'
declare const globalThis: {
  prismaGlobal: ReturnType<typeof newInstance>;
} & typeof global;

export const prisma = globalThis.prismaGlobal || newInstance();

if (process.env.NODE_ENV !== 'production') globalThis.prismaGlobal = prisma;
