# DIY AC Repair — Audit & Redesign Plan

Prepared for Dalia Roshdy · July 18, 2026

## What was reviewed

- GitHub export: `Dalia-Roshdy/DIY-project` — the FlutterFlow-generated Flutter/Dart source for the web app.
- Firebase project `diy-ac-44e10` (Blaze plan, apps: Android, iOS, Web) — confirmed live and accessible.
- The live published app: `https://d-i-y-a-cweb-23yv9j.flutterflow.app/`
- Your Firestore schema/design document (collections for makes/models, motor/fan/contactor specs, items, orders, payments, shipments, returns, technicians, reviews, videos, AI sessions, audit logs).
- Your original wireframe deck (`DIYACRepair.pptx`/PDF) describing the intended flow: Home → identify make/model → diagnose → select motor/fan/contactor → order review → payment → confirmation → tracking/returns → technician marketplace.
- Your existing Stitch project ("Remix of Home & Start Diagnosis") — it already contains ~30 drafted screens: Home, Login/Register/Forgot password, Repair/diagnosis flow, part selection, spec entry, order review, security/payment, confirmation/success, technician listing and profile, shipping. This is a real head start and should be the visual reference for the rebuild rather than starting from a blank page.

**Decision confirmed with you:** keep the same Firebase project and data model; focus this phase on redesigning UI/UX (using the Stitch direction) and rebuilding the front end in hand-written Flutter (moving off the FlutterFlow low-code editor) rather than a from-scratch data model.

## Concrete problems found

1. **`kBreakpointMedium` and `kBreakpointLarge` are both hardcoded to `1024.0`** in `lib/flutter_flow/flutter_flow_util.dart`. Several components (`s06_core_features`, `s05_what_we_offer`, `s07_service_content`, `s09_testimonials`, and others) branch on all three constants (`if width<Small {…} else if width<Medium {…} else if width<Large {…} else {…}`). Because Medium and Large are identical, the third branch (`width<Large`, right after already knowing `width>=Medium`) can mathematically never fire — that tier's intended styling is dead code, and everything from 1024px up gets lumped into the final "desktop" branch, including genuinely wide desktop screens that were meant to get their own refinement. This is a real bug, but fixing `kBreakpointLarge` touches a widely-reused constant (dozens of two-way `width<kBreakpointLarge ? A : B` checks elsewhere), so it needs a dedicated pass with visual QA across breakpoints rather than a blind global edit — flagging it here rather than changing it blindly.
2. **Home page hero has a sizing bug (fixed as a first patch — see attached file).** In `s02_headlines_widget.dart`, the outer bordered container height is responsive (110 / 144 / 179px by breakpoint), but the `CarouselSlider` inside it was hard-coded to `height: 180.0` regardless of screen size. On the live site this causes the rotating word to overflow its border and visibly overlap the text below it mid-transition — reproduced live during testing (and confirmed the specific line in the code). I patched this into a single shared height helper so both containers always agree, plus added `clipBehavior: Clip.hardEdge` as a safety net. `s05_what_we_offer` and `s07_service_content` use the same fixed-180 pattern and should get the same treatment next.
3. **The published live app doesn't match the GitHub export.** The live site's rotating hero words are "DIAGNOSE / GOOD SKILLS / QUICK DELIVERY", but the GitHub repo's code has "DIAGNOSE / SOLUTIONS / RESULTS / SUCCESS" in that exact component. Worth reconciling before the rebuild starts, so we're building on top of what's actually live rather than a stale export.
4. **Payment page, per your own spec, should not collect raw card fields.** The original wireframe sketches literal "Credit card number / CVV" text fields, but your DB design doc (correctly) calls for provider tokenization. The code already pulls in `flutter_stripe`/`flutter_stripe_web` and has a `payment_manager.dart`, so the pieces are there — this phase should make sure the checkout UI actually uses Stripe's hosted Card/Payment Sheet element (never a plain text field for card number/CVV), both for PCI compliance and so it renders correctly on mobile.
5. **Scope mismatch across the app.** Several flows described in your wireframes (technician availability by zip/day/time, install-pack customization, return/inspection status detail) exist in the data model but the UI is inconsistent about surfacing them — part of the "serious usability" feedback you flagged.

## Design direction

Use the existing Stitch screens as the source of truth for layout and tone (clean, high-contrast, bold display type — consistent with the live site's current direction), refined for:
- A real 3-tier responsive grid (mobile / tablet / desktop) applied consistently, not per-widget guesswork.
- Consistent primary actions (one clear "Next"/"Continue" pattern across the whole wizard, disabled-state styling standardized).
- Clearer selection tables for motor/fan/contactor results (sticky headers, obvious selected-row state, usable on narrow screens as cards instead of horizontal-scroll tables).
- A visibly tokenized, trustworthy payment step.

## Phased build plan

Rebuilding all ~30 screens in one pass isn't realistic to verify well. Proposed order, each phase shippable and testable on its own:

1. **Foundation + Home** — fix the breakpoint constants, establish a shared responsive layout system, rebuild Home (hero, nav, footer) per Stitch, fix the carousel bug.
2. **Diagnosis & part-selection wizard** — make/model/serial entry, motor/fan/contactor spec screens, results tables, video help screens.
3. **Cart, order review & checkout** — install-pack logic, Stripe-tokenized payment, order confirmation.
4. **Order tracking & returns** — support lookup, order details, initiate return, tracking.
5. **Technician/handyman marketplace** — listing, registration, reviews.
6. **Admin/support surfaces** — inventory, purchase orders, dynamic config, audit log views.

## What's delivered this round vs. next

Delivered now: this audit, and a patched `s02_headlines_widget.dart` (the Home hero component) with the overflow bug fixed — attached alongside this document. I don't have push access to your GitHub repo, so it's provided as a file to drop in and diff yourself (or give me repo access and I'll open a PR directly).

Not yet done, and each a real chunk of work in its own right:
- A dedicated breakpoint pass (fixing `kBreakpointLarge`/`Medium` with visual QA across mobile/tablet/desktop, since it's referenced across dozens of files).
- The actual visual redesign of Home (and every other screen) against the Stitch direction — I looked at the Stitch project's screen inventory but haven't pulled specific screens' colors/type/spacing into a design system yet.
- Reconciling the live-vs-GitHub content mismatch.

Suggested next session: pick one — (a) I do the breakpoint fix properly with screenshots at each width for you to sign off, or (b) I pull the actual Stitch designs for Home screen-by-screen and rebuild it to match, fixing this bug as part of that work anyway.
