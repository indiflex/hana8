import NextAuth from 'next-auth';
import Credentials from 'next-auth/providers/credentials';
import Github from 'next-auth/providers/github';
import Google from 'next-auth/providers/google';

export const {
  handlers: { GET, POST },
  auth,
  signIn,
  signOut,
} = NextAuth({
  providers: [
    Credentials({
      name: 'Email',
      credentials: {
        email: { label: '이메일', type: 'email', placeholder: 'user@mail.com' },
        passwd: {
          label: 'Password',
          type: 'password',
          placeholder: 'password...',
        },
      },
      async authorize(credentials) {
        console.log('🚀 ~ credentials:', credentials);
        const { email, passwd } = credentials;
        return { id: '1', email: email as string, name: 'HONG', passwd };
      },
    }),
    Google,
    Github,
  ],
  callbacks: {
    async signIn({ profile, user }) {
      console.log('🚀 signIn - profile:', profile);
      console.log('🚀 signIn - user:', user);
      return true;
    },
    async jwt({ token, user, trigger }) {
      console.log('🚀 jwt - token:', token);
      console.log('🚀 jwt - user:', user);
      console.log('🚀 jwt - trigger:', trigger);
      if (user) {
        token.id = user.id;
        token.email = user.email;
        token.name = user.name;
      }
      return token;
    },
    async session({ session, user }) {
      if (user) {
        session.user.id = user.id;
        session.user.email = user.email;
        session.user.name = user.name;
      }
      return session;
    },
  },
  pages: {
    // signIn: '/sign',
    error: '/sign/error',
  },
  session: {
    strategy: 'jwt',
  },
  trustHost: true,
  jwt: { maxAge: 30 * 60 },
});
