import { defineConfig } from 'astro/config';

export default defineConfig({
  site: 'https://saddlebackvalleyendodontics.com',
  // Pretty URLs: /blog/post-slug/ instead of /blog/post-slug.html
  trailingSlash: 'always',
});
