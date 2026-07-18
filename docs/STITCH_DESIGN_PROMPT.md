# Design Prompt — DIY AC Repair (responsive, interactive)

Copy everything in the box below into Stitch (or any AI UI design tool). It's written to produce a full, consistent, responsive design system in one pass rather than 30 disconnected screens.

---

Design a complete, responsive, interactive web app called **DIY AC Repair**.

**Brand & logo:** The product name is "DIY AC Repair." There's an existing logo mark to design around (attach the actual logo file to Stitch as a reference image) — a circular badge combining a light-blue snowflake/AC-vent shape on the left interlocked with a red plus/cross shape on the right, with small orbiting accent dots around the mark suggesting precision and motion. Read it as "cooling" (snowflake) fused with "fix/repair" (the plus/medical-cross cue). Use the mark as-is in the nav bar/header across every breakpoint (never redraw or reinterpret it) — but do NOT pull the UI's interactive color palette from the logo. Use the "Hardline Teal" design system below for every surface, text, and interaction color instead; the logo stays a self-contained full-color badge, and Teal (not the logo's red) carries every button/selection/progress accent, so red is never overloaded to mean both "brand" and "error" at once.

**Design system — follow exactly, do not improvise a different one:**

```yaml
name: Hardline Teal
colors:
  surface: '#f9f9f9'
  surface-dim: '#dadada'
  surface-bright: '#f9f9f9'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f4f3f3'
  surface-container: '#eeeeee'
  surface-container-high: '#e8e8e8'
  surface-container-highest: '#e2e2e2'
  on-surface: '#1a1c1c'
  on-surface-variant: '#4c4546'
  inverse-surface: '#2f3131'
  inverse-on-surface: '#f1f1f1'
  outline: '#7e7576'
  outline-variant: '#cfc4c5'
  surface-tint: '#5e5e5e'
  primary: '#000000'
  on-primary: '#ffffff'
  primary-container: '#1b1b1b'
  on-primary-container: '#848484'
  inverse-primary: '#c6c6c6'
  secondary: '#5d5f5f'
  on-secondary: '#ffffff'
  secondary-container: '#dfe0e0'
  on-secondary-container: '#616363'
  tertiary: '#000000'
  on-tertiary: '#ffffff'
  tertiary-container: '#00201e'
  on-tertiary-container: '#00948d'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#e2e2e2'
  primary-fixed-dim: '#c6c6c6'
  on-primary-fixed: '#1b1b1b'
  on-primary-fixed-variant: '#474747'
  secondary-fixed: '#e2e2e2'
  secondary-fixed-dim: '#c6c6c7'
  on-secondary-fixed: '#1a1c1c'
  on-secondary-fixed-variant: '#454747'
  tertiary-fixed: '#79f6ed'
  tertiary-fixed-dim: '#59dad1'
  on-tertiary-fixed: '#00201e'
  on-tertiary-fixed-variant: '#00504c'
  background: '#f9f9f9'
  on-background: '#1a1c1c'
  surface-variant: '#e2e2e2'
typography:
  headline-xl: {fontFamily: Space Grotesk, fontSize: 48px, fontWeight: '700', lineHeight: '1.1', letterSpacing: -0.02em}
  headline-lg: {fontFamily: Space Grotesk, fontSize: 32px, fontWeight: '700', lineHeight: '1.2', letterSpacing: -0.01em}
  headline-lg-mobile: {fontFamily: Space Grotesk, fontSize: 24px, fontWeight: '700', lineHeight: '1.2'}
  body-lg: {fontFamily: Space Grotesk, fontSize: 18px, fontWeight: '500', lineHeight: '1.5'}
  body-md: {fontFamily: Space Grotesk, fontSize: 16px, fontWeight: '400', lineHeight: '1.5'}
  label-bold: {fontFamily: Space Grotesk, fontSize: 14px, fontWeight: '700', lineHeight: '1'}
  label-sm: {fontFamily: Space Grotesk, fontSize: 12px, fontWeight: '500', lineHeight: '1'}
spacing:
  unit: 4px
  gutter: 24px
  margin-desktop: 64px
  margin-mobile: 16px
  border-width: 2px
  shadow-offset: 4px
```

**Style: Neo-Brutalism ("Hardline").** Heavy 2px black borders on every container and interactive element, 4px solid black hard shadows (no blur, no soft ambient shadow), sharp 90-degree corners everywhere (circles only for icons/radio buttons, and even those sit in square hit-areas), Space Grotesk throughout, high-contrast black/white surfaces with Teal as the *only* interactive accent — buttons, selected rows, progress bars, focus states. Pressed/active states remove the shadow offset (the block "sinks") and fill with Teal. This aesthetic must hold at every breakpoint — do not soften it into rounded corners or drop shadows on mobile.

**Product context:** Central air conditioners break down roughly every 2–3 years, almost always from a bad motor, fan, or contactor — over 90% of failures are electrical. This app helps a homeowner (not a technician) diagnose which part is broken, order that exact part machined/cut to their unit's specs, get it delivered fast (often same-day), and either install it themselves with video guidance or hand off to a handyman/HVAC technician found through the app. Secondary users: independent technicians/handymen who register to receive referrals and reviews.

**Tone:** Confident, plain-spoken, a little reassuring — someone who's anxious about a broken AC in summer heat should feel "I can actually do this" within seconds of landing. Bold, high-contrast typography for headlines; calm, uncluttered body copy. Avoid anything that feels like a generic SaaS template.

**Devices — design and show all three, not just desktop shrunk down:**
- Mobile: 360–599px
- Tablet / iPad: 600–1023px (portrait and landscape both matter — this is a genuinely distinct layout tier, not a squeezed desktop or a stretched phone)
- Desktop: 1024px and up

For every screen, show how the layout, navigation, and any data tables restructure at each tier — don't just resize text.

**Screens to design (as one connected flow, sharing a single design system):**
1. Home — value proposition, make/model/serial entry (optional), primary CTA into diagnosis, secondary links to video library, order tracking, technician directory, about/contact.
2. Diagnose — "help me identify my make/model/serial" video guidance; "diagnose the broken part" video guidance.
3. Parts-to-order — checklist (motor / fan blade / contactor), each leads into its own spec + results flow.
4. Spec entry + results table for each part type (motor, fan, contactor) — user enters/edits specs, sees a filtered results table (make, model, key specs, part number, price, delivery time, a single-select action) with a "next" action disabled until one row is selected. Provide a companion "help me identify these specs" video page for each.
5. Order review — recommended install-pack and tools, itemized with editable checkboxes, running subtotal/tax/shipping/total.
6. Checkout — address, shipping, and a payment step that visibly uses a hosted/tokenized card element (never raw card-number/CVV text fields) with clear trust signals.
7. Order confirmation — plain-language non-refundable/inspection policy notice, order summary.
8. Track my order — email + phone + last-4 lookup, order list, order detail with delivery/return status timeline and a map-style tracker.
9. Initiate a return — itemized, returnable items only.
10. Technician / handyman directory — address or zip entry, sortable list with distance, rate, reviews, availability; a technician registration form (service area, pricing, certifications); a leave-a-review flow.
11. About, Contact, Login/Register/Forgot-password.

**Design system to produce (not just pictures):** a primary/secondary/tertiary color palette, a type scale (display/headline/title/label/body), a spacing scale, and named breakpoint tokens — hand these back explicitly so they can be reused as code constants.

**Interaction details that matter here:**
- One consistent primary-button style and one consistent disabled-button style, used identically everywhere a selection gates progress.
- Selection tables/lists: obvious selected-row state, single-select only, and on mobile these must become stacked cards, not a horizontally-scrolled tiny table.
- Any rotating/auto-playing text or image element must have its container and its content share literally the same height value at every breakpoint — no element should ever be allowed to overflow its own bounding box. (We shipped exactly this bug in the current build: a hero word-carousel whose outer box shrank on small screens while the inner content stayed a fixed height, causing visible text overlap. Do not repeat this pattern anywhere.)
- Sticky/persistent primary navigation with a visibly current step indicator during the multi-step ordering wizard.
- Tap targets ≥44px on mobile; body text never below 16px on mobile.

**Deliverable:** per-screen designs at all three breakpoints, plus the extracted design system (colors, type, spacing, breakpoints) as a separate summary so it can be handed to a Flutter developer to implement pixel-faithfully.

---

### Why it's written this way

- Named exact breakpoints so "tablet" can't be skipped or collapsed into desktop (that's the bug we found in the current app).
- Called out the hero-carousel overflow bug explicitly so the design tool doesn't propose the same fragile pattern.
- Asked for design tokens as an explicit output, not just pictures — that's what turns a Stitch mockup into code instead of a screenshot to eyeball.
- Kept it to one prompt covering the whole flow so every screen shares one visual language, instead of 30 separate prompts that drift.
