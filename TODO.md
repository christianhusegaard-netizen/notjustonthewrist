# Not Just On The Wrist — TODO

## Domain Reputation & Corporate Filter Fix

Background: The site is blocked on work-managed devices (Microsoft Defender SmartScreen) because the domain is brand new and uncategorized. This is not a content issue — corporate web filters block unknown domains by default.

- [ ] Submit `notjustonthewrist.com` to Microsoft for URL review/categorization: https://www.microsoft.com/en-us/wdsi/support/report-unsafe-site-guest
- [ ] Verify the site is clean on Google Safe Browsing: https://transparencyreport.google.com/safe-browsing/search
- [ ] Ensure HTTPS / SSL certificate is active and working
- [ ] Add a `<meta name="description">` tag to `index.html`
- [ ] Add a privacy policy page
- [ ] Add a contact / about page with real info

## Migrate Hosting to GitHub Pages

Background: Currently we manually upload files to simply.com every time we update the website. With GitHub Pages, pushing to GitHub auto-deploys the site — no manual uploading needed.

Steps:
- [ ] Create a public repo on GitHub (e.g. `notjustonthewrist`)
- [ ] Initialize git locally and push all files to the repo
- [ ] Enable GitHub Pages in repo Settings > Pages (source: `main` branch)
- [ ] Add `notjustonthewrist.com` as custom domain in GitHub Pages settings
- [ ] Update DNS records (at simply.com or domain registrar) to point to GitHub's servers
- [ ] Verify the site works on the custom domain
- [ ] Cancel simply.com hosting (keep domain registration if it's managed there)

## Website Analytics (Google Analytics)

Background: To see how many visitors the site gets, which articles are most read, and where visitors come from. Free, anonymous/aggregated data — no personal identification of visitors.

- [ ] Create a free Google Analytics account at analytics.google.com
- [ ] Get the tracking ID / measurement ID
- [ ] Add the tracking snippet to `index.html`
- [ ] Verify data is flowing in the Analytics dashboard

## "For Sale" Badge on Personal Collection Watches

Background: Some watches in the Personal Collection are available for sale (e.g. the Rolex Sky-Dweller 42 mm). We want a small, tasteful "For Sale" badge to appear in the corner of the watch's image on both the article card (homepage grid) and the full article hero — making it clear at a glance which pieces are available, without disrupting the editorial tone of the site.

Approach:
- Add a single `forSale: true` field to any watch object in the article data that should carry the badge. Default for all others is no field (treated as not for sale). When a watch sells, just remove the field — the badge disappears.
- Render a small pill or ribbon in the top-right corner of the article card image and the article hero image. Likely styling: white text on the existing `--accent` colour, small caps, light shadow, `border-radius` to match the rest of the site.
- Gate visually to Personal Collection only (i.e. only shows on cards/articles tagged "Personal Collection"), so it never appears on Past Collection pieces.

Steps:
- [ ] Add `forSale: true` to the Rolex Sky-Dweller 42 mm article object in `index.html` (first test case).
- [ ] Add a `.for-sale-badge` CSS rule (positioned absolute, top-right of the image container).
- [ ] Update the article-card render function to inject the badge when `forSale` is true.
- [ ] Update the article hero render to do the same on the full article page.
- [ ] Decide the call-to-action: a small "Contact to enquire" line at the bottom of for-sale articles linking to the dedicated enquiry email (see "Dedicated Enquiry Email Address" below), vs. just leaving the badge as a visual flag.
- [ ] Optional: add a "For Sale" filter chip to the brand strip so visitors can browse only watches that are available.
- [ ] Test on desktop and mobile, including how the badge sits on different image crops.

## Dedicated Enquiry Email Address

Background: Once the "For Sale" badge is live (see section above), visitors will need a way to enquire about watches that are available. Rather than exposing your personal email, we'll set up a dedicated address for the site — also useful as a general contact point for reader correspondence and future enquiries.

Address: `notjustonthewrist@gmail.com` (confirmed — matches the site domain).

Steps:
- [ ] Create the Gmail account `notjustonthewrist@gmail.com` at https://accounts.google.com/signup — choose a strong password and enable 2-Step Verification.
- [ ] Set up forwarding (optional) so messages also land in your personal inbox, so you don't miss enquiries.
- [ ] Add a short signature/auto-reply if desired (e.g. "Thanks for your message — I'll get back to you shortly. — Christian").
- [ ] Wire the address into the "Contact to enquire" call-to-action on for-sale articles (`mailto:` link with a subject pre-filled, e.g. `Enquiry: Rolex Sky-Dweller 42 mm`).
- [ ] Add the address to the about / contact page (see "Domain Reputation" section above) as the general contact email.
- [ ] Consider a basic spam strategy: the `mailto:` will attract some bots over time. Options include obfuscating the address in the HTML, or using a simple contact form instead.

## Ideas & Future Improvements

- [ ] (add ideas here)
