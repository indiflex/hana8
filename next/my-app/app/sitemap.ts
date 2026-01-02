import type { MetadataRoute } from 'next';

export default function sitemap(): MetadataRoute.Sitemap {
  // const baseUrl = 'sbm.topician.com';
  const baseUrl = 'localhost:3000';

  return [
    {
      url: baseUrl,
      lastModified: new Date(),
      changeFrequency: 'weekly',
      priority: 1,
    },
    {
      url: `${baseUrl}/hello`,
      lastModified: new Date(),
      changeFrequency: 'weekly',
      priority: 0.9,
    },
    {
      url: `${baseUrl}/hi`,
      lastModified: new Date(),
      changeFrequency: 'weekly',
      priority: 0.9,
    },
  ];
}
