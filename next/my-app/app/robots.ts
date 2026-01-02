import type { MetadataRoute } from 'next';

export default function robots(): MetadataRoute.Robots {
  // const baseUrl = 'sbm.topician.com';
  const baseUrl = 'http://localhost:3000';

  return {
    rules: [
      {
        userAgent: '*',
        allow: '/',
        disallow: ['/my/', '/api/', '/caches/'],
      },
      {
        userAgent: 'Googlebot',
        allow: '/',
        disallow: ['/hello/'],
      },
    ],
    sitemap: `${baseUrl}/sitemap.xml`,
  };
}
