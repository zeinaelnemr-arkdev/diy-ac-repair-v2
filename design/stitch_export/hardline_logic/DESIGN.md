---
name: Hardline Logic
colors:
  surface: '#f9f9f9'
  surface-dim: '#dadada'
  surface-bright: '#f9f9f9'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f3f3f3'
  surface-container: '#eeeeee'
  surface-container-high: '#e8e8e8'
  surface-container-highest: '#e2e2e2'
  on-surface: '#1b1b1b'
  on-surface-variant: '#4c4546'
  inverse-surface: '#303030'
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
  tertiary-container: '#221b00'
  on-tertiary-container: '#9b8200'
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
  tertiary-fixed: '#ffe16d'
  tertiary-fixed-dim: '#e9c400'
  on-tertiary-fixed: '#221b00'
  on-tertiary-fixed-variant: '#544600'
  background: '#f9f9f9'
  on-background: '#1b1b1b'
  surface-variant: '#e2e2e2'
typography:
  display:
    fontFamily: Space Grotesk
    fontSize: 72px
    fontWeight: '700'
    lineHeight: '1.1'
    letterSpacing: -0.02em
  display-mobile:
    fontFamily: Space Grotesk
    fontSize: 48px
    fontWeight: '700'
    lineHeight: '1.1'
    letterSpacing: -0.01em
  headline:
    fontFamily: Space Grotesk
    fontSize: 40px
    fontWeight: '700'
    lineHeight: '1.2'
  headline-mobile:
    fontFamily: Space Grotesk
    fontSize: 32px
    fontWeight: '700'
    lineHeight: '1.2'
  title:
    fontFamily: Space Grotesk
    fontSize: 24px
    fontWeight: '700'
    lineHeight: '1.3'
  body:
    fontFamily: Space Grotesk
    fontSize: 18px
    fontWeight: '500'
    lineHeight: '1.6'
  body-mobile:
    fontFamily: Space Grotesk
    fontSize: 16px
    fontWeight: '500'
    lineHeight: '1.6'
  label:
    fontFamily: Space Grotesk
    fontSize: 14px
    fontWeight: '700'
    lineHeight: '1.2'
spacing:
  xs: 4px
  sm: 8px
  md: 16px
  lg: 24px
  xl: 32px
  xxl: 48px
  huge: 64px
---

## Brand & Style
The design system is rooted in **Industrial Brutalism**, a movement that prioritizes raw utility, structural honesty, and uncompromising clarity. It is designed for high-stakes environments where information density and immediate legibility are paramount. The aesthetic mirrors industrial manuals and technical blueprints—utilizing heavy linework, stark contrasts, and a "built-to-last" digital construction.

The target audience consists of power users who value efficiency over decoration. The UI should evoke a sense of structural integrity, precision, and "analog-digital" hybridity. Every element is intentionally unrefined yet meticulously aligned, creating a tactile experience that feels physically stamped onto the screen.

## Colors
The palette is restricted to high-contrast industrial tones. **Primary Black** is used for all structural borders and primary actions, ensuring maximum visual weight. **Secondary White** provides the canvas, while **Surface Grey** creates subtle depth without relying on soft shadows. 

**Industrial Yellow** is the system's "Warning/Action" signal, used sparingly for critical navigation points or status indicators. **Pure Red** is reserved strictly for destructive actions or system failures. All colors are used at 100% opacity; gradients are strictly prohibited to maintain the flat, mechanical aesthetic.

## Typography
This design system utilizes **Space Grotesk** across all roles to lean into its technical, geometric character. The type scale is aggressive and hierarchical. Headlines and Display styles use heavy weights and uppercase transforms to act as structural anchors for the page.

Tight tracking is applied to large display text to mimic block-printed industrial labels. Body text maintains a Medium (500) weight to ensure the monolinear nature of the font remains legible against the heavy borders of the containers.

## Layout & Spacing
The layout follows a strict **8pt grid** and a **fixed column system**. On desktop, a 12-column grid is used with 24px gutters. On mobile, the system collapses to a 4-column grid with 16px gutters and margins. 

Layouts should feel "boxed in." Content containers should maximize the use of the spacing scale to create clear separation without the use of white space for "breathability"—instead, white space is used as a functional buffer between high-density data blocks. Containers should be stacked vertically with consistent 32px or 48px gaps.

## Elevation & Depth
Elevation in this design system is purely **architectural and physical**, not atmospheric. Depth is achieved through "Hard Shadows"—solid offsets of #000000 with 100% opacity. 

- **Level 0 (Surface):** The background layer.
- **Level 1 (Cards/Inputs):** 4px solid shadow (Bottom-Right).
- **Level 2 (Buttons/Active):** 8px solid shadow to indicate high interactivity.
- **Level 3 (Modals/Overlays):** 12px solid shadow.

No blurs or gradients are allowed. Interaction is indicated by "pressing" the element—moving the container +4px or +8px on the X and Y axes while removing the shadow to simulate a physical button being depressed into a machine console.

## Shapes
The shape language is strictly **Rectilinear**. All corners must be 0px (Sharp). This reinforces the industrial, brutalist nature of the design. Borders are treated as physical components; they are thick and heavy (ranging from 3px for inputs to 8px for primary interactive elements). 

When elements overlap, they should maintain their sharp edges, creating a "blueprint" style where structural lines intersect clearly.

## Components

### Buttons
- **Primary:** Black background, White text, 8px solid shadow (#000). On hover, the shadow increases. On active/click, the button shifts down/right by 4px and the shadow reduces.
- **Secondary:** White background, Black text, 3px Black border, 4px solid shadow.
- **Disabled:** Grey background (#CCCCCC), Grey text (#666666), 3px Grey border, no shadow.

### Form Inputs
- **Text Fields:** White background, 3px Black border, 16px internal padding. Labels sit directly above the input in `Label` style. 
- **Focus State:** Border thickness increases to 5px or changes to Industrial Yellow.

### Cards & Containers
- **Standard Card:** White background, 4px Black border, 8px solid shadow. Used for grouping related content.
- **Header Section:** Industrial Yellow background, 4px Black bottom-border, Display type.

### Lists & Navigation
- **List Items:** Separated by 3px horizontal black rules. No rounded corners on selection states.
- **Navigation Tabs:** Rectangular blocks with 3px borders. Active tab uses a Black background with White text; inactive tabs use White background with Black text.

### Feedback & Status
- **Critical Alert:** Red background, White text, 8px Black border.
- **Warning:** Industrial Yellow background, Black text, 4px Black border.