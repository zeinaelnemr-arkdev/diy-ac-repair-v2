---
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
  headline-xl:
    fontFamily: Space Grotesk
    fontSize: 48px
    fontWeight: '700'
    lineHeight: '1.1'
    letterSpacing: -0.02em
  headline-lg:
    fontFamily: Space Grotesk
    fontSize: 32px
    fontWeight: '700'
    lineHeight: '1.2'
    letterSpacing: -0.01em
  headline-lg-mobile:
    fontFamily: Space Grotesk
    fontSize: 24px
    fontWeight: '700'
    lineHeight: '1.2'
  body-lg:
    fontFamily: Space Grotesk
    fontSize: 18px
    fontWeight: '500'
    lineHeight: '1.5'
  body-md:
    fontFamily: Space Grotesk
    fontSize: 16px
    fontWeight: '400'
    lineHeight: '1.5'
  label-bold:
    fontFamily: Space Grotesk
    fontSize: 14px
    fontWeight: '700'
    lineHeight: '1'
  label-sm:
    fontFamily: Space Grotesk
    fontSize: 12px
    fontWeight: '500'
    lineHeight: '1'
spacing:
  unit: 4px
  gutter: 24px
  margin-desktop: 64px
  margin-mobile: 16px
  border-width: 2px
  shadow-offset: 4px
---
## Brand & Style
The design system is rooted in **Neo-Brutalism**, emphasizing structural integrity, high-contrast hierarchies, and a "no-nonsense" functional aesthetic. It is designed for high-performance environments where clarity and immediate feedback are paramount.
The personality is authoritative and unapologetically digital. It utilizes heavy strokes, sharp corners, and a rigid adherence to the grid to create a sense of indestructible logic. The introduction of a balanced Teal accent softens the previous industrial aggression, providing a sophisticated, "precision-tool" feel while maintaining the high-impact visual language of the Brutalist movement.
Key characteristics include:
- **Raw Expression:** Unhidden structural elements like heavy borders and visible grids.
- **Immediate Hierarchy:** High contrast ratios to ensure information is processed instantly.
- **Technical Precision:** Geometric shapes and monospaced-adjacent aesthetics.
## Colors
The palette is strictly functional, relying on a monochrome core with a high-visibility accent.
- **Primary (Black):** Used for all structural borders, primary text, and heavy shadows. It represents the "Hardline" logic of the system.
- **Secondary (White):** The primary surface color, providing a clean, stark background for maximum legibility.
- **Tertiary (Medium Teal):** The singular point of interaction. Used exclusively for active states, selection highlights, progress indicators, and primary call-to-action fills.
- **Neutral (Cool Gray):** Used for secondary backgrounds and disabled states to maintain depth without sacrificing the high-contrast aesthetic.
## Typography
This design system uses **Space Grotesk** across all levels to reinforce its technical, geometric character.
- **Headlines:** Must be bold and tightly spaced. Large headlines should utilize a slight negative letter-spacing to feel more like a cohesive "block" of information.
- **Body:** Maintains a generous line height for readability against high-contrast backgrounds.
- **Labels:** Small labels and UI metadata should often be set in bold, uppercase styles to mimic technical specifications or industrial labeling.
## Layout & Spacing
The layout is governed by a **fixed 12-column grid** on desktop and a **4-column grid** on mobile.
- **Rhythm:** All spacing is based on a 4px baseline unit.
- **Borders:** Every container and interactive element must be bounded by a 2px solid black border.
- **Padding:** Internal padding should be generous (typically 16px or 24px) to balance the visual weight of the heavy borders.
- **Alignment:** Elements should snap strictly to the grid. Avoid fluid percentages for smaller components; use fixed pixel increments to maintain the "hard" feel.
## Elevation & Depth
This system rejects soft ambient shadows in favor of **Hard Shadows** (Neo-Brutalism).
- **The "Pop" Effect:** Depth is created by a 2px or 4px solid black offset shadow (no blur). This makes components look like physical blocks stacked on the surface.
- **Active State Depth:** When an element is pressed or active, the shadow offset should reduce to 0, or "sink" into the surface, while the background fill switches to the Teal accent.
- **Tonal Layers:** High-priority containers use a white background, while secondary zones use the Neutral Gray background, always separated by a 2px black border.
## Shapes
The shape language is strictly **Sharp (0px)**.
Every UI element—from buttons and input fields to cards and modal windows—must have 90-degree corners. This reinforces the "Hardline" logic and creates a structural, architectural feel. Circles are permitted only for specific iconography or radio buttons, but they must still be encased in square hit-areas where possible.
## Components
- **Buttons:** Primary buttons feature a Teal background, 2px black border, and 4px black hard shadow. Text is bold and uppercase.
- **Input Fields:** Sharp 2px black borders with a white background. On focus, the border remains black but the background shifts to a very pale version of the Teal accent or adds a Teal inner-glow/stroke.
- **Chips/Tags:** Small rectangular boxes with 2px borders. Active tags are filled with Teal; inactive tags are white.
- **Lists:** Items are separated by 2px black horizontal rules. Hover states change the entire row background to Teal.
- **Checkboxes/Radio Buttons:** Square-only (even for radios). Selection state is a solid Teal fill with a black "X" or "Check" mark.
- **Cards:** White containers with 2px black borders and a 4px black hard shadow. Headings inside cards are always separated from content by a horizontal line.
- **Progress Bars:** A 2px black border frame. The progress fill is solid Teal, moving in discrete blocks rather than a smooth gradient.

## Note on the existing logo

The current DIY AC Repair mark (blue snowflake/vent + red plus, orbiting dots) doesn't share this system's palette — this system's `error` color is the standard red (`#ba1a1a`), reserved for error states, so reusing the logo's red as a general UI/brand color here would collide with that meaning. Recommended resolution: keep the logo mark as a self-contained, full-color badge in the nav/header (untouched), and let Teal carry every interactive/brand accent in the rest of the UI. If you'd rather the logo's blue/red drive the whole palette instead of Teal, say so and this system should be revised before anything gets built against it.
