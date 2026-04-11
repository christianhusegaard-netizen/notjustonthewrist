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

## Ideas & Future Improvements

- [ ] (add ideas here)
