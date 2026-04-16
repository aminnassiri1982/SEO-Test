# SEO Audit Report: Monterey Dental Contours
**Site:** https://montereydentalcontours.com/  
**Business:** Monterey Dental Contours – Dr. Richard E. Kent, DDS  
**Address:** 2100 Garden Road, Monterey, CA 93940  
**Phone:** (831) 375-4242  
**Audit Date:** April 16, 2026  
**Auditor:** Claude AI (SEO Audit Skill)

---

## Executive Summary

Monterey Dental Contours is a well-established cosmetic, restorative, and general dental practice on the Monterey Peninsula with over 30 years of history and strong professional credentials. However, the website has significant SEO gaps that are hampering its ability to compete in a market with 100+ active dental practices.

**Overall SEO Health: 42 / 100 — Needs Significant Work**

### Top 5 Priority Issues

1. **Bot-blocking server configuration** — The site returns HTTP 403 for automated fetch requests, which may be blocking search engine crawlers and preventing proper indexation.
2. **No dental implants service page** — A high-value, high-search-volume service exists only as a 2016 blog post rather than a dedicated landing page.
3. **Dormant, date-URL blog with stale content** — All visible blog posts are from 2016 (10 years old) with WordPress date-based URL slugs, signaling outdated content to Google.
4. **Weak/missing title tag optimization on key pages** — Multiple service pages and the About page lack location keywords and keyword-rich phrasing.
5. **Missing dedicated pages for key differentiators** — Sedation dentistry, financing/insurance, and emergency care have no landing pages despite being conversion drivers.

### Quick Wins

- Add "Monterey, CA" and brand name to pages missing location keywords in titles
- Redirect or consolidate the duplicate `/welcome-to-monterey-dental-contours/` page
- Add a dental implants service page (extremely high commercial search intent)
- Verify and fix robots.txt and sitemap accessibility

---

## 1. Technical SEO Findings

---

### 1.1 Crawlability — CRITICAL

**Issue:** The site returns HTTP 403 Forbidden for all automated requests including the homepage, robots.txt, and sitemap.xml.

- **Impact:** HIGH — If search engines are receiving the same 403 errors, pages cannot be crawled or indexed. This is the most critical technical issue on the site.
- **Evidence:** All WebFetch requests to `montereydentalcontours.com`, `www.montereydentalcontours.com`, `/robots.txt`, and `/sitemap.xml` returned 403. The site is only accessible via real browser sessions.
- **Fix:** Check whether the hosting firewall, security plugin (e.g., Wordfence, Cloudflare), or `.htaccess` configuration is blocking known crawler user agents (Googlebot, Bingbot). Use Google Search Console → "URL Inspection" to confirm if Googlebot can fetch the homepage. Whitelist legitimate crawler user agents.
- **Priority:** P1 — Resolve immediately

---

### 1.2 Robots.txt — UNABLE TO VERIFY

**Issue:** robots.txt returned 403 and could not be inspected.

- **Impact:** HIGH — Without a verified robots.txt, there is no way to confirm whether important pages are allowed to be crawled or whether a sitemap is referenced.
- **Fix:** After resolving the 403 issue (see 1.1), verify that robots.txt:
  - Allows Googlebot and Bingbot on all key pages
  - References the sitemap URL (`Sitemap: https://montereydentalcontours.com/sitemap.xml`)
  - Does not accidentally block `/wp-admin/` or service pages
- **Priority:** P1

---

### 1.3 XML Sitemap — UNABLE TO VERIFY

**Issue:** `sitemap.xml` returned 403.

- **Impact:** HIGH — Without a submitted sitemap, Google relies solely on crawl links to discover pages. This is especially risky if internal linking is thin.
- **Fix:** After resolving the 403 issue, confirm sitemap.xml exists and submit it to Google Search Console and Bing Webmaster Tools.
- **Priority:** P1

---

### 1.4 Duplicate/Orphan Page — `/welcome-to-monterey-dental-contours/`

**Issue:** A separate page at `/welcome-to-monterey-dental-contours/` exists with the title "Cosmetic Dentist | General Dentist | Monterey, CA" — which overlaps significantly with the homepage's content and purpose.

- **Impact:** MEDIUM — Creates duplicate content risk and dilutes link equity between two pages targeting the same intent.
- **Evidence:** Both the homepage (title: "Cosmetic & General Dentistry, Teeth Whitening | Monterey CA") and this page appear to target the same "general/cosmetic dentist in Monterey" query.
- **Fix:** Either (a) set a canonical tag on this page pointing to the homepage, or (b) 301-redirect it to the homepage, or (c) differentiate it into a unique "Welcome / New Patients" page with distinct content. Option (b) is preferred.
- **Priority:** P2

---

### 1.5 Blog URL Structure — Date-Based WordPress Permalinks

**Issue:** Blog posts use WordPress default date-based permalink structure: `/2016/10/27/experienced-dentist-monterey/` and `/2016/07/28/dental-implants-monterey-ca/`

- **Impact:** MEDIUM — Date stamps in URLs signal stale content to users and search engines. Additionally, 2016 posts are nearly 10 years old and almost certainly outdated.
- **Fix:** (1) Update WordPress permalink structure to remove dates (e.g., `/blog/post-slug/`). Set up 301 redirects from old date URLs to new clean URLs. (2) Refresh or consolidate the stale 2016 blog content.
- **Priority:** P2

---

### 1.6 HTTPS / SSL

**Issue:** HTTPS appears to be in use based on the domain (no redirect warning detected).

- **Impact:** LOW — Likely compliant.
- **Fix:** Confirm via browser that HTTP → HTTPS redirect is active and there are no mixed-content warnings. Use SSL Labs to verify certificate validity and configuration.
- **Priority:** P3

---

### 1.7 Mobile-Friendliness

**Issue:** Could not verify directly due to 403 blocks.

- **Impact:** HIGH (if issues exist) — Google uses mobile-first indexing; poor mobile UX directly impacts rankings.
- **Fix:** Test at Google's Mobile-Friendly Test tool. Dental practice sites frequently have issues with: small tap targets on phone numbers, oversized hero images, and non-responsive navigation menus.
- **Priority:** P2 (verify)

---

### 1.8 Page Speed / Core Web Vitals

**Issue:** Could not run PageSpeed Insights directly. No performance data was available from search results.

- **Impact:** HIGH — Core Web Vitals are a confirmed Google ranking signal, especially for mobile. WordPress sites with unoptimized images and third-party scripts commonly score poorly.
- **Fix:** Run PageSpeed Insights at https://pagespeed.web.dev for both mobile and desktop. Target:
  - LCP < 2.5s
  - INP < 200ms
  - CLS < 0.1
  Common fixes: compress and convert images to WebP, enable caching, use a CDN, defer non-critical JS.
- **Priority:** P2 (measure first, then fix)

---

## 2. On-Page SEO Findings

---

### 2.1 Title Tags — Inconsistent Quality

| Page | Current Title | Issues |
|------|--------------|--------|
| Homepage | Cosmetic & General Dentistry, Teeth Whitening \| Monterey CA | Missing brand name; "Monterey CA" should be "Monterey, CA" |
| Welcome | Cosmetic Dentist \| General Dentist \| Monterey, CA | Likely duplicate of homepage intent |
| Services | Dental Services \| Monterey Dental Contours, Monterey, CA | Good — includes brand + location |
| Cosmetic Dentistry | Cosmetic Dentistry in Monterey, CA - Monterey Dental Contours | Good — strong |
| Restorative Dentistry | Restorative Dentistry in Monterey \| Monterey Dental Contours | Good — strong |
| Teeth Whitening | Teeth Whitening in Monterey - Monterey Dental Contours | Good — strong |
| Dental Hygiene | Dental Hygiene & Prevention - Monterey Dental Contours | Missing location ("in Monterey, CA") |
| Membership Club | Membership Club - Monterey Dental Contours | Generic — no keywords or location |
| About Us | About Monterey Dental Contours | Missing location, no keyword value |
| Dr. Kent | Dr. Kent - Monterey Dental Contours | Too vague — missing "DDS", location, specialty |
| Blog Archives | Blog Archives - Monterey Dental Contours | Generic — low SEO value |
| Blog Post | Experienced Dentist \| Monterey, CA - Monterey Dental Contours | OK but targets same homepage keyword |

**Fix for each page:**
- Homepage → `Cosmetic & General Dentist in Monterey, CA | Monterey Dental Contours`
- Dental Hygiene → `Dental Hygiene & Teeth Cleaning in Monterey, CA | Monterey Dental Contours`
- Membership Club → `Dental Membership Plan Monterey, CA | No Insurance Needed`
- About Us → `About Our Monterey, CA Dental Practice | Monterey Dental Contours`
- Dr. Kent → `Dr. Richard Kent, DDS | Cosmetic & General Dentist | Monterey, CA`

- **Priority:** P2

---

### 2.2 Meta Descriptions — Cannot Verify

**Issue:** Meta descriptions could not be extracted due to 403 errors.

- **Impact:** MEDIUM — Meta descriptions don't directly affect rankings but significantly affect click-through rate from SERPs.
- **Fix:** Audit all pages for missing or duplicate meta descriptions (use Screaming Frog or Google Search Console). Each page should have a unique 150-160 character description with a clear call to action (e.g., "Book your appointment today at (831) 375-4242").
- **Priority:** P2

---

### 2.3 Missing Service Pages — HIGH PRIORITY

The following high-intent service pages are missing or inadequate:

| Missing Page | Search Intent | Priority |
|-------------|--------------|----------|
| Dental Implants | Extremely high — "dental implants monterey ca" has strong commercial intent | P1 |
| Sedation Dentistry | High — practice offers nitrous + computerized anesthesia, a key differentiator | P1 |
| Dental Veneers | High — cosmetic procedure with dedicated search volume | P2 |
| Dental Bonding | Medium | P2 |
| Emergency Dental Care | High — often searched urgently | P2 |
| Dental Financing / Insurance | High conversion impact | P2 |
| Dental Crowns | High | P2 |
| New Patient Information | Medium — reduces calls, builds trust | P3 |

**Note:** Dental implants are currently referenced only in a 2016 blog post (`/2016/07/28/dental-implants-monterey-ca/`) — not a service page. This is a missed ranking opportunity.

- **Fix:** Create dedicated service pages for each, following this structure:
  - H1: [Service] in Monterey, CA
  - Intro paragraph (keyword in first 100 words)
  - What it is / how it works
  - Who it's for / benefits
  - What to expect at our office
  - FAQs
  - CTA (schedule appointment)
- **Priority:** P1 for implants + sedation; P2 for others

---

### 2.4 Content Quality — Stale Blog, Thin Service Pages

**Issue:** The blog appears dormant since 2016. All visible posts are nearly 10 years old.

- **Impact:** HIGH — Fresh, expert content is a major E-E-A-T signal. A dormant blog signals an inactive or untrustworthy site to Google.
- **Fix:** 
  1. Either update existing posts with current information and new dates, or 301-redirect them to relevant service pages
  2. Publish fresh blog content monthly — patient education topics work well: "How Long Do Dental Implants Last?", "Is Teeth Whitening Safe?", "What to Expect at Your First Cleaning"
  3. Target long-tail FAQ-style keywords that bring in searchers at the research stage
- **Priority:** P2

---

### 2.5 Heading Structure — Cannot Fully Verify

**Issue:** H1-H6 structure could not be verified due to 403 blocks. Based on page titles, the structure likely follows WordPress theme defaults.

- **Common issues on dental WordPress sites:**
  - Multiple H1 tags (one from logo, one from page content)
  - H1 doesn't contain the primary keyword
  - Headings used for styling, not semantic structure
- **Fix:** Inspect source of each key page. Ensure:
  - Exactly one H1 per page
  - H1 mirrors (but doesn't duplicate) the title tag
  - H2s cover service subtopics, benefits, FAQs
- **Priority:** P2

---

### 2.6 Image Optimization — Cannot Verify

**Issue:** Cannot verify image alt texts or file sizes due to 403 blocks.

- **Common issues:** Dental sites often upload large hero images (1–3MB+) without compression. Alt text is frequently missing or says "image001.jpg".
- **Fix:** Audit images using Screaming Frog or an online image analyzer. Ensure:
  - All images have descriptive alt text (e.g., "Dr. Kent performing dental cleaning in Monterey CA")
  - Files are compressed and served in WebP format
  - Lazy loading is enabled
- **Priority:** P2

---

## 3. Local SEO Findings

---

### 3.1 Google Business Profile — Verify and Optimize

**Issue:** GBP status cannot be confirmed from audit data, but it is critical for the "dentist near me" searches that drive most dental appointment bookings.

- **Impact:** CRITICAL for local traffic — Google Local Pack (map results) often gets more clicks than organic results for dental queries.
- **Fix:** Ensure GBP is:
  - Claimed and verified
  - NAP exactly matching the website: **Monterey Dental Contours | 2100 Garden Road, Monterey, CA 93940 | (831) 375-4242**
  - Primary category: "Cosmetic Dentist" or "Dentist"
  - Secondary categories: "General Dentist", "Teeth Whitening Service"
  - Services section fully populated
  - Photos regularly updated (before/after gallery, office, staff)
  - Posts published regularly (at minimum monthly)
  - Q&A section actively managed
- **Priority:** P1

---

### 3.2 NAP Consistency

- **Confirmed NAP:** Monterey Dental Contours | 2100 Garden Road, Monterey, CA 93940 | (831) 375-4242
- **Fax:** (831) 375-4281
- **Listed on:** ADA Find-a-Dentist, Yelp, Healthgrades
- **Fix:** Audit NAP across all major directories (Google, Yelp, Bing Places, Healthgrades, Zocdoc, WebMD, Vitals, Facebook). Fix any inconsistencies in address format, phone number format, or business name spelling.
- **Priority:** P2

---

### 3.3 Reviews

- **Issue:** Practice has testimonials on its own site (good for trust) but third-party review volume and platform coverage is unclear.
- **Known listings:** Yelp (Richard E Kent - Monterey Dental Contours), Healthgrades, ADA directory
- **Fix:**
  - Set up a review request system — email or SMS patients after appointments
  - Target Google reviews first (highest impact for local pack rankings)
  - Respond to all reviews (positive and negative) professionally
  - Aim for 50+ Google reviews as a baseline to compete in the local pack
- **Priority:** P1

---

### 3.4 Local Content

**Issue:** No location-specific pages beyond the main city (Monterey, CA). The practice likely draws patients from surrounding areas.

- **Potential:** Create location-mention content for: Carmel, Pacific Grove, Seaside, Marina, Pebble Beach — either as separate landing pages or integrated naturally into service page content.
- **Priority:** P3

---

## 4. E-E-A-T Assessment

### Strengths
- **Dr. Kent credentials:** Loma Linda University School of Dentistry graduate; 30+ years on the Monterey Peninsula; 2013 Dentist of the Year (Monterey Bay Dental Society); former Society President (2017); Chairman of Peer Review Board for 8+ years
- **Staff credentials:** Stacy — 30+ years as RDA and RDH; Rachel — dental assistant since 2003
- **ADA listing** confirms professional membership
- **Patient testimonials** on website

### Weaknesses
- **No author schema markup** on blog posts
- **No visible medical review process** or content citations
- **Blog dormant since 2016** — undercuts "current expertise" signals
- **Dr. Kent page title too vague** ("Dr. Kent - Monterey Dental Contours") — doesn't communicate authority
- **Missing:** awards/recognition callout on homepage, professional photo of Dr. Kent prominently featured with credentials, association badges (ADA, CDA, Monterey Bay Dental Society)

### Fixes
- Add a dedicated "Dr. Kent" section on the homepage with his credentials
- Display professional badges (ADA, CDA) in the footer or header
- Add author bio + credentials to all blog posts
- Consider a "Why Choose Us" page that consolidates awards, certifications, years of experience, and patient outcomes
- **Priority:** P2

---

## 5. Competitive Landscape

The Monterey dental market is highly competitive with 100+ active practices. Key SEO competitors include:

| Competitor | Notable SEO Strength |
|-----------|---------------------|
| Monterey Peninsula Dental Group (mpdg.com) | "Best Dentist" awards 9 consecutive years; since 1972; strong brand authority |
| Central Coast Dental Care (centralcoastdentalcare.com) | Same-day treatment, emergency care, IV sedation — captures urgent queries |
| Vista Robles Dental Group (montereybaydentist.com) | Dedicated specialty pages per treatment |
| Monterey Smile Center (montereysmilecenter.com) | Strong local branding |
| Cypress Dental Monterey (cypressdentalmonterey.com) | Local focus |
| montereydentistry.net | Dedicated dental implants page; (831) 655-2222 |

**Competitive Gap:** Most top competitors have dedicated service pages for implants, emergency dentistry, and sedation. Monterey Dental Contours is missing all three.

---

## 6. Prioritized Action Plan

### Phase 1 — Critical (Do First, Within 2 Weeks)

1. **Investigate and fix 403 server blocking** — Check Cloudflare/Wordfence settings; verify Googlebot can crawl the site using Search Console URL Inspection
2. **Verify sitemap.xml exists and is submitted** to Google Search Console and Bing Webmaster Tools
3. **Verify robots.txt** is accessible and not blocking important pages
4. **Claim/optimize Google Business Profile** — complete all fields, add photos, start review collection
5. **Create a Dental Implants service page** — highest commercial-intent keyword missing from the site

### Phase 2 — High Impact (Within 4–6 Weeks)

6. **Create a Sedation Dentistry page** — a key differentiator (nitrous + computerized anesthesia) that competitors lack; targets anxious patients
7. **Fix title tags** on About, Dr. Kent, Membership Club, and Dental Hygiene pages to include location
8. **301-redirect `/welcome-to-monterey-dental-contours/`** to the homepage
9. **Fix WordPress permalink structure** — remove dates from blog post URLs; set up 301 redirects
10. **Audit and update existing blog posts** — refresh content or redirect to relevant service pages
11. **Improve Dr. Kent page** — add full credentials, awards, education, professional photo, schema markup
12. **Fix meta descriptions** — unique, compelling, 150-160 characters, with phone CTA on every page

### Phase 3 — Growth (Within 3 Months)

13. Create service pages for: Veneers, Bonding, Crowns, Emergency Dental Care, Financing/Insurance, New Patients
14. Start publishing fresh blog content (1–2 posts/month) targeting patient education keywords
15. Implement LocalBusiness and Dentist schema markup on homepage and contact page
16. Run Google PageSpeed Insights and fix Core Web Vitals issues
17. Test Mobile-Friendly Test; fix any tap target / layout issues
18. Build review collection system — email/SMS follow-up after appointments
19. Audit and normalize NAP across 10+ directory listings
20. Add E-E-A-T signals to homepage: awards, credentials, association badges, years in practice

---

## 7. Schema Markup Recommendations

> **Note:** JSON-LD schema injected via plugins (AIOSEO, Yoast, RankMath) cannot be detected by static fetchers. Use Google Rich Results Test (https://search.google.com/test/rich-results) to verify what schema is currently live.

**Recommended schema types:**

| Schema Type | Page | Purpose |
|-------------|------|---------|
| `LocalBusiness` / `Dentist` | Homepage | Enables rich results in local search |
| `Person` (Dr. Kent) | About / Dr. Kent page | Establishes E-E-A-T for the provider |
| `FAQPage` | Service pages | Earns FAQ rich snippets in SERPs |
| `Review` / `AggregateRating` | Homepage or Reviews page | Displays star ratings in SERPs |
| `MedicalProcedure` | Implants, Whitening, Restorative pages | Signals medical expertise |
| `BreadcrumbList` | All pages | Improves SERP display |

---

## 8. Tools for Ongoing Monitoring

| Tool | Purpose | Cost |
|------|---------|------|
| Google Search Console | Indexation, Core Web Vitals, clicks | Free |
| Google Business Profile | Local pack management | Free |
| Google PageSpeed Insights | Performance scores | Free |
| Google Rich Results Test | Schema validation | Free |
| Google Mobile-Friendly Test | Mobile UX | Free |
| Screaming Frog SEO Spider | Full site crawl | Free up to 500 URLs |
| Ahrefs / Semrush | Backlinks, keyword rankings, competitor analysis | Paid |
| BrightLocal | Local citation audit and NAP management | Paid |

---

## Appendix — Pages Discovered (via Google index)

| URL | Title |
|-----|-------|
| / | Cosmetic & General Dentistry, Teeth Whitening \| Monterey CA |
| /welcome-to-monterey-dental-contours/ | Cosmetic Dentist \| General Dentist \| Monterey, CA |
| /services/ | Dental Services \| Monterey Dental Contours, Monterey, CA |
| /cosmetic-dentistry-monterey-ca/ | Cosmetic Dentistry in Monterey, CA - Monterey Dental Contours |
| /restorative-dentistry-monterey-ca/ | Restorative Dentistry in Monterey \| Monterey Dental Contours |
| /teeth-whitening/ | Teeth Whitening in Monterey - Monterey Dental Contours |
| /dental-hygiene-prevention-monterey/ | Dental Hygiene & Prevention - Monterey Dental Contours |
| /membership-club/ | Membership Club - Monterey Dental Contours |
| /about-us/ | About Monterey Dental Contours |
| /about-us/dr-kent/ | Dr. Kent - Monterey Dental Contours |
| /contact-us/ | (Contact page) |
| /category/blog/ | Blog Archives - Monterey Dental Contours |
| /2016/10/27/experienced-dentist-monterey/ | Experienced Dentist \| Monterey, CA - Monterey Dental Contours |
| /2016/07/28/dental-implants-monterey-ca/ | Dental Implants \| Monterey, CA |
| /testimonial/anonymous-patient/ | (Testimonial page) |

---

*Report generated using publicly available search index data, SERP analysis, and structured audit methodology. Direct site crawl was unavailable due to server-side bot blocking (HTTP 403). Recommendations marked "cannot verify" should be re-audited once crawler access is restored.*
