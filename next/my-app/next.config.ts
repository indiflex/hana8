import type { NextConfig } from 'next';

const nextConfig: NextConfig = {
  /* config options here */
  reactCompiler: true,
  cacheComponents: true,
  experimental: {
    typedEnv: true,
  },
  typedRoutes: true,
  images: {
    remotePatterns: [{ hostname: 'picsum.photos' }],
  },
};

export default nextConfig;
