import { defineCollection, z } from 'astro:content';

const blog = defineCollection({
  type: 'content',
  schema: z.object({
    title: z.string(),
    deck: z.string(),
    date: z.date(),
    category: z.string(),
    readTime: z.string(),
    heroImage: z.string(),
    heroAlt: z.string().optional(),
    author: z.object({
      name: z.string(),
      bio: z.string(),
      portrait: z.string(),
    }),
    draft: z.boolean().optional().default(false),
  }),
});

export const collections = { blog };
