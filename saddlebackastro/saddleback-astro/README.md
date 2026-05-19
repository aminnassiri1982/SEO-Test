# Saddleback Valley Endodontics — Astro

A static site built with [Astro](https://astro.build). The HTML, CSS, and
JavaScript from the original template are preserved exactly — Astro lets us
keep custom code intact while adding a blog system backed by Markdown files.

## What's in here

```
saddleback-astro/
├── src/
│   ├── components/         Reusable pieces (Header, Footer)
│   │   ├── Header.astro
│   │   └── Footer.astro
│   ├── layouts/            Page shells
│   │   ├── BaseLayout.astro     ← every page wraps in this
│   │   └── BlogPost.astro       ← single-article layout
│   ├── pages/              Each file = one URL
│   │   ├── index.astro          → /
│   │   ├── blog/
│   │   │   ├── index.astro      → /blog
│   │   │   └── [slug].astro     → /blog/any-post-slug
│   ├── content/            Where blog posts live as Markdown
│   │   └── blog/
│   │       ├── why-we-save-the-tooth.md
│   │       └── ...
│   └── styles/
│       └── global.css      Tokens + all shared CSS
└── public/
    └── images/             Logos, hero video, slide photos
```

## How blog posts work

Each post is a `.md` file inside `src/content/blog/`. The frontmatter at
the top defines the title, date, category, hero image, author, and read time.
The body below the `---` is the article content written in Markdown.

```markdown
---
title: "Why we save the tooth, almost always."
deck: "A note on philosophy, modern outcomes, and the quiet case for endodontics over extraction."
date: 2026-05-14
category: "Patient Care"
readTime: "6 min read"
heroImage: "/images/posts/save-the-tooth.jpg"
author:
  name: "Dr. A. Reyes"
  bio: "Founding partner of the practice. Board certified, 22 years..."
  portrait: "/images/team/dr-reyes.jpg"
---

Modern endodontic outcomes have shifted the calculus dramatically...

## A subheading

More body text. Markdown handles **bold**, *italic*, [links](#), lists,
and so on. For pull quotes use the standard `>` syntax.
```

When you add a new `.md` file in this folder and rebuild the site, a new
article page appears automatically at `/blog/<filename>` and the Journal
index page lists it. **No code changes needed to publish.**

## Running the site

```bash
# First time setup
npm install

# Development (auto-refreshes as you edit)
npm run dev      # → http://localhost:4321

# Build for production
npm run build    # outputs static HTML to ./dist
```

## Deploying

Push the project to a GitHub repo, then connect to **Vercel** or **Netlify**.
Both will detect Astro automatically, build the site on every git push, and
serve it from their CDN. Both have generous free tiers — for a practice site
this size, hosting costs nothing.

## Adding a CMS later (optional)

The office can edit Markdown files directly through GitHub's web interface,
which is free and works fine for one or two posts a month. If they want
something nicer, two options:

1. **Decap CMS** (free) — drop-in admin panel at `/admin` that edits the
   Markdown files in the GitHub repo. Office staff log in with a Netlify
   account, write the post in a Notion-style editor, and click publish.

2. **Sanity Studio** (free for small teams) — a more polished CMS where
   posts live in Sanity's cloud rather than in Git. Better author experience,
   richer editing tools, but requires swapping the content source from
   Markdown to Sanity's API. About a day of developer time.

Start with plain Markdown. Add a CMS when the client actually asks for one.
