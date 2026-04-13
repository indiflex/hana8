import type { DefaultSession } from 'next-auth';

import type { JWT } from 'next-auth/jwt';

export type X = JWT;

declare module 'next-auth' {
  interface Session {
    user: {
      // id: number;
      isadmin?: boolean;
    } & DefaultSession['user'];
  }

  interface User {
    passwd?: string;
    isadmin?: boolean;
  }
}

declare module 'next-auth/jwt' {
  interface JWT {
    isadmin?: boolean;
  }
}
