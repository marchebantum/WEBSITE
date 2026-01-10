# Animation & Functionality Inventory Report
**Generated:** January 10, 2025  
**Source File:** Base Code V1.html (4112 lines, ~260KB)

## Table of Contents
1. [CSS Animations](#css-animations)
2. [GSAP Animations](#gsap-animations)
3. [Three.js Animations](#threejs-animations)
4. [Lottie Animations](#lottie-animations)
5. [Interactive Elements](#interactive-elements)
6. [Third-Party Libraries](#third-party-libraries)
7. [Complex Sections](#complex-sections)

---

## CSS Animations

### @keyframes Definitions

#### animationIn
- **Location:** Lines 65-76
- **Purpose:** Scroll-in animation for elements
- **Properties:** opacity (0→1), translateY (30px→0), blur (8px→0)
- **Usage:** Applied via class or inline style

#### progressAnimation
- **Location:** Lines 262-265
- **Purpose:** SVG circle progress animation
- **Properties:** stroke-dashoffset (circumference → dash-offset)
- **Duration:** 1.6s ease-out forwards
- **Usage:** `.progress-circle` class on strategic visualization

#### slowSpin
- **Location:** Lines 268-271
- **Purpose:** Slow rotation for star image
- **Properties:** rotate (0deg → 360deg)
- **Duration:** 25s linear infinite (inline override)
- **Usage:** `.clipped-star-image` class

#### timelineSweep
- **Location:** Lines 415-420
- **Purpose:** Pragmatic timeline line sweep animation
- **Properties:** width (0% → 100%), opacity (0.8 → 1 → 0)
- **Duration:** var(--timeline-cycle) = 4.2s linear infinite
- **Usage:** `.pragmatic-line-active` when `.is-animating`

#### timelinePhase1-4
- **Location:** Lines 446-468
- **Purpose:** Phase text animations for pragmatic timeline
- **Properties:** translateY (0 → -5px → 0), scale (1 → 1.15 → 1), opacity (0.6 → 1)
- **Timing:** Phase 1 (0-15%), Phase 2 (35-40%), Phase 3 (60-65%), Phase 4 (85-90%)
- **Duration:** var(--timeline-cycle) = 4.2s linear infinite

#### dotPulse1-4
- **Location:** Lines 422-444
- **Purpose:** Dot pulse animations for pragmatic timeline
- **Properties:** scale (1 → 1.4 → 1), box-shadow intensity changes
- **Timing:** Dot 1 (10-15%), Dot 2 (35-40%), Dot 3 (60-65%), Dot 4 (85-90%)
- **Duration:** var(--timeline-cycle) = 4.2s linear infinite

#### pulse-dot
- **Location:** Lines 590-593
- **Purpose:** Pulsing dot for active service tab
- **Properties:** opacity (1 → 0.5 → 1), scale (1 → 1.2 → 1)
- **Duration:** 1.5s infinite
- **Usage:** `.service-tab-item-dot` when active

#### revealEffect
- **Location:** Lines 608-611
- **Purpose:** Text reveal animation with clip-path
- **Properties:** opacity (0 → 1), clip-path (inset 0 100% 0 0 → inset 0 0% 0 0), translateX (-10px → 0)
- **Duration:** 0.8s cubic-bezier(0.4, 0, 0.2, 1) forwards
- **Usage:** `.reveal-text` class

#### spin-slow
- **Location:** Lines 614-617
- **Purpose:** Slow rotation animation
- **Properties:** rotate (0deg → 360deg)
- **Duration:** 20s linear infinite (default), overridden inline (90s, 20s)
- **Usage:** `.animate-spin-slow` class, SVG elements

#### spin-reverse
- **Location:** Lines 629-632
- **Purpose:** Reverse rotation animation
- **Properties:** rotate (0deg → -360deg)
- **Duration:** 15s linear infinite (default), overridden inline (120s)
- **Usage:** `.animate-spin-reverse` class, counter-rotating rings

#### float
- **Location:** Lines 634-637
- **Purpose:** Floating animation
- **Properties:** translateY (0px → -8px → 0px)
- **Duration:** 3s ease-in-out infinite
- **Usage:** `.animate-float` class, `.clipped-star-container`

#### pulseDot
- **Location:** Lines 639-642
- **Purpose:** Dot pulse animation
- **Properties:** opacity (0.7 → 1 → 0.7)
- **Duration:** 2s ease-in-out infinite
- **Usage:** `.animate-pulse-dot` class

#### scan
- **Location:** Lines 644-648
- **Purpose:** Scanning line effect
- **Properties:** translateY (-100% → 100%), opacity (0 → 1 → 0)
- **Duration:** 8s linear infinite
- **Usage:** Zen tech container scanning overlay

#### spin-60s
- **Location:** Lines 650-653
- **Purpose:** 60-second rotation
- **Properties:** rotate (0deg → 360deg)
- **Duration:** 60s linear infinite
- **Usage:** Outer rotating rings (zen container, inquire page)

#### spin-40s-reverse
- **Location:** Lines 655-658
- **Purpose:** 40-second reverse rotation
- **Properties:** rotate (0deg → -360deg)
- **Duration:** 40s linear infinite
- **Usage:** Inner counter-rotating rings

#### dash
- **Location:** Lines 665-667
- **Purpose:** SVG connector line animation
- **Properties:** stroke-dashoffset (0 → 1000)
- **Duration:** 30s linear infinite
- **Usage:** `.connector` class on SVG paths

### Tailwind CSS Animations

#### fade-in
- **Location:** Lines 36-38, 41-44
- **Purpose:** Fade-in animation
- **Properties:** opacity (0 → 1), translateY (10px → 0)
- **Duration:** 1.2s ease-out forwards
- **Usage:** `.animate-fade-in` class

#### pulse-slow
- **Location:** Lines 36-38
- **Purpose:** Slow pulse animation
- **Duration:** 4s cubic-bezier(0.4, 0, 0.6, 1) infinite
- **Usage:** `.animate-pulse-slow` class

### CSS Transitions

#### Works Cards
- **Image scale:** transform scale (1.05 default, 1.12 hover) - duration: 1000ms ease-out
- **Overlay:** background-color transitions - duration: 500ms
- **Content:** translateY transitions - duration: 500ms
- **Expand/Collapse:** max-height, opacity, transform - duration: 600ms ease, 400ms ease

#### Service Tabs
- **All properties:** 0.3s ease
- **Hover transform:** translateY(-2px)
- **Active state:** border-top, backdrop-filter changes

#### Inquiry Modal
- **Service cards:** border-color, box-shadow, background-color - 0.25s ease
- **Check icon:** transform, opacity - 0.25s ease
- **Goal pills:** background-color, color, box-shadow, transform - 0.2s ease

---

## GSAP Animations

### Page Transitions

#### goToServices()
- **Location:** Lines 3496-3534
- **Hero block:** opacity 0, y: -40, duration: 0.6s
- **Orb:** opacity 0, duration: 2.5s; rotation +2π, duration: 3.0s; scale 3.0, duration: 3.0s; z-position 8, duration: 3.0s
- **Services page:** opacity 0→1, y: 40→0, duration: 1.8s, delay: 1.0s

#### goToWorks()
- **Location:** Lines 3536-3624
- **Previous page:** opacity 0, y: -30, duration: 0.8s-1.0s
- **Orb:** opacity 0, duration: 1.5s; rotation +1.5π, duration: 2.0s; scale 2.5x2.5x6.0, duration: 2.0s; z-position 4, duration: 2.0s
- **Works elements:** Staggered fade-in with blur removal, duration: 1.0s, stagger: 0.08s
- **Pillars:** Staggered with scramble text, duration: 1.0s, stagger: 0.15s
- **Works page:** opacity 0→1, y: 20→0, duration: 1.2s, delay: 0.7s

#### goToAbout()
- **Location:** Lines 3626-3713
- **Previous page:** opacity 0, y: -30, duration: 1.0s
- **Orb:** rotation +2π, duration: 2.5s; scale 2.0, duration: 2.5s; opacity 0, duration: 1.5s
- **About title:** opacity 0→1, y: 80→0, duration: 1.8s, ease: expo.out
- **Subtitle:** opacity 0→0.9, y: 60→0, duration: 1.8s, delay: 0.15s
- **Subtext:** opacity 0→1, y: 10→0, duration: 1.5s, delay: 0.5s
- **Method title:** opacity 0→1, y: 10→0, duration: 1.2s, delay: 0.4s
- **Process cards:** Staggered, duration: 1.0s, stagger: 0.15s, delay: 0.9s
- **About page:** opacity 0→1, y: 40→0, duration: 1.5s

#### goToInquire()
- **Location:** Lines 3715-3764
- **Previous page:** opacity 0, y: -30, duration: 1.0s
- **Orb:** opacity 0, duration: 1.5s; rotation +1.5π, duration: 2.0s; scale 2.5x2.5x6.0, duration: 2.0s; z-position 4, duration: 2.0s
- **Inquiry badge:** opacity 0→1, y: 40→0, scale: 0.8→1, duration: 1.2s, ease: expo.out
- **Headline:** opacity 0→1, y: 60→0, duration: 1.6s, ease: expo.out
- **Inquire page:** opacity 0→1, y: 20→0, duration: 1.2s, delay: 0.7s

#### goToHome()
- **Location:** Lines 3766-3793
- **Previous page:** opacity 0, y: -20, duration: 1.0s
- **Orb:** opacity 0.8, duration: 2.0s
- **Hero block:** opacity 0→1, y: 30→0, duration: 1.5s, delay: 0.8s

### Service Content Updates

#### updateSlideContent()
- **Location:** Lines 2995-3329
- **Fade out:** All visualization elements opacity → 0
- **Fade in:** After 200ms delay, opacity → 1 after 10ms
- **Right content:** GSAP animation on service change - opacity 0→1, x: 20→0→-20→0, duration: 0.3s→0.5s

---

## Three.js Animations

### Setup
- **Location:** Lines 2379-2597
- **Renderer:** WebGLRenderer with antialiasing and alpha
- **Camera:** PerspectiveCamera (50° FOV)
- **Scene:** FogExp2 (color: #CECECE, density: 0.035)

### Particle System
- **Geometry:** IcosahedronGeometry (radius: 4.5, detail: 30)
- **Material:** ShaderMaterial with custom vertex/fragment shaders
- **Uniforms:**
  - uTime: Animated in requestAnimationFrame loop
  - uDistortion: 0.6
  - uSize: 2.5
  - uColor: #4A1D0A (Dark Red)
  - uOpacity: 0.8 (animated during page transitions)
  - uMouse: Vector2 (smoothed mouse position)

### Orbit Lines
- **Three orbits:** EllipseCurve with varying radii (5.5, 5.2, 6.0)
- **Material:** LineBasicMaterial (color: 0x78350F, opacity: 0.15)
- **Rotation:** Counter-rotating with time-based offsets

### Animation Loop
- **Location:** Lines 2551-2596
- **Time progression:** time += 0.01 + (speed * 0.05)
- **Rotation:**
  - X: cumulativeRotation.x (drag/momentum based)
  - Y: cumulativeRotation.y + transitionRotationY.value (scroll-based)
  - Z: Math.sin(time * 0.1) * 0.05 (subtle wobble)
- **Orbit rotation:** lineGroup.rotation.x = Math.sin(time * 0.05) * 0.2
- **Individual orbits:** rotation.z += 0.002 * (i + 1) per frame
- **Camera sway:** Smooth interpolation to mouse position (0.05 factor)

### Interaction
- **Mouse drag:** Rotation velocity based on drag delta (0.005 factor)
- **Touch drag:** Same as mouse with touch events
- **Momentum:** Velocity damping (0.95 factor) when not dragging
- **Base rotation:** Y-axis returns to 0.005 speed when idle

### Page Transition Effects
- **Services:** Scale 3.0, z-position 8, opacity 0, rotation +2π
- **Works:** Scale 2.5x2.5x6.0, z-position 4, opacity 0, rotation +1.5π
- **About:** Scale 2.0, opacity 0, rotation +2π
- **Inquire:** Scale 2.5x2.5x6.0, z-position 4, opacity 0, rotation +1.5π
- **Home:** Opacity 0.8, reset position/scale

---

## Lottie Animations

### Mobile Menu Animation
- **Location:** Lines 2605-2618
- **Container:** `#mobile-menu-btn`
- **Data:** Inline JSON (v5.4.4, 60fps, 140 frames)
- **Speed:** 1.5x (setSpeed)
- **Play segments:** [0, 60] for open, [85, 140] for close
- **Trigger:** `toggleMenu()` function

### Service Visualizations

#### Adaptive (Consulting)
- **Location:** Lines 2620-2632
- **Container:** `#service-adaptive-visualization`
- **Data:** Inline JSON (v4.8.0, 29.97fps, 31 frames)
- **Loop:** true
- **Autoplay:** false
- **Trigger:** When "ADAPTIVE" slide is shown

#### Foundational (Training)
- **Location:** Lines 2634-2646
- **Container:** `#service-foundational-visualization`
- **Data:** Inline JSON (v4.8.0, 30fps, 117 frames)
- **Loop:** true
- **Autoplay:** false
- **Trigger:** When "FOUNDATIONAL" slide is shown

#### Applied (Training)
- **Location:** Lines 2648-2659
- **Container:** `#service-applied-visualization`
- **Path:** 'LZD TEch.json'
- **Loop:** true
- **Autoplay:** false
- **Trigger:** When "APPLIED" slide is shown

#### Compliant (Governance)
- **Location:** Lines 2661-2672
- **Container:** `#service-compliant-visualization`
- **Path:** 'Success (2).json'
- **Loop:** true
- **Autoplay:** false
- **Trigger:** When "COMPLIANT" slide is shown

#### Protected (Governance)
- **Location:** Lines 2674-2685
- **Container:** `#service-protected-visualization`
- **Path:** 'Authentication Lock Login.json'
- **Loop:** true
- **Autoplay:** false
- **Trigger:** When "PROTECTED" slide is shown

#### Auditable (Governance)
- **Location:** Lines 2687-2699
- **Container:** `#service-auditable-visualization`
- **Data:** Inline JSON (v5.4.4, 60fps, 140 frames)
- **Path:** 'Document OCR Scan.json'
- **Loop:** true
- **Autoplay:** false
- **Trigger:** When "AUDITABLE" slide is shown

### Easter Egg: Falling Money
- **Location:** Lines 2701-2740
- **Container:** `#falling-money-container`
- **Path:** 'Falling money.json'
- **Loop:** false
- **Autoplay:** false
- **Trigger:** Clicking "Discount Code" in technical tree
- **Popup:** Discount code popup with scale/opacity transition (500ms)

---

## Interactive Elements

### Page Navigation
- **Function:** `showPage(targetPageId)` - Lines 3452-3494
- **Pages:** home, services, works, about, inquire
- **Header state:** Dark mode for works/about pages
- **Scroll sync:** Services background height synchronization

### Service Carousel
- **Tabs:** 4 service tabs (Development, Training, Consulting, Governance)
- **Function:** `updateService(index)` - Lines 3331-3378
- **Slides:** Per-service slide carousel (3 slides each)
- **Functions:** `nextSlide()`, `prevSlide()` - Lines 3380-3390
- **Content updates:** Fade transitions (200ms delay, 10ms fade-in)
- **Visualizations:** Conditional show/hide based on slide/service combination

### Works Cards
- **Expand/Collapse:** Toggle on click - Lines 3875-3909
- **States:** is-default, is-selected, is-expanded
- **Hover effects:** Image scale, overlay opacity, content translateY
- **Keyboard:** Enter/Space key support

### Mobile Menu
- **Toggle:** `toggleMenu()` - Lines 2742-2766
- **Animation:** Lottie menu icon animation
- **Overlay:** Opacity and translateY transitions (300ms)
- **Auto-close:** Timeout-based cleanup

### 3D Particle System Interaction
- **Mouse drag:** Lines 2478-2503
- **Touch drag:** Lines 2505-2529
- **Momentum:** Velocity-based rotation with damping
- **Mouse tracking:** Smooth camera sway (0.05 interpolation)

### Scroll Indicators
- **Elements:** `.scroll-indicator` class
- **Data attribute:** `data-next-page`
- **Click handler:** Lines 3925-3935
- **Pages:** services, works, about, inquire

### Text Animations

#### Scramble Text
- **Function:** `scrambleText(element, targetText, duration)` - Lines 2938-2962
- **Characters:** Random character pool
- **Interval:** 30ms per iteration
- **Usage:** Service headlines, tab labels, works titles, zen phase indicator

#### Reveal Text
- **Class:** `.reveal-text`
- **Animation:** revealEffect keyframes
- **Usage:** Slide titles, various text elements

### Zen Content Rotation
- **Container:** `#zen-tech-container` - Lines 3937-4030
- **Auto-rotate:** 6-second interval
- **Pause:** On mouseenter, resume on mouseleave
- **Manual:** Click to advance
- **Theme cycling:** 4 color themes rotate with content
- **Phase indicator:** Scramble text animation

### Inquiry Modal
- **Open/Close:** `showInquiryModal()`, `hideInquiryModal()` - Lines 4040-4053
- **Service selection:** Multi-select with check icons - Lines 4072-4083
- **Goal selection:** Single-select pills - Lines 4085-4092
- **Escape key:** Close on Escape - Lines 4094-4099
- **Overlay click:** Close on overlay click - Lines 4067-4070

### Technical Tree
- **Function:** `toggleTreeItem(id, isTopLevel)` - Lines 2912-2933
- **Accordion:** Top-level items collapse others
- **Easter egg:** Discount code triggers falling money animation
- **Render:** `renderTreeItem(item, level)` - Lines 2887-2910

### Form Interactions
- **Service cards:** Toggle selected state with check icon animation
- **Goal pills:** Toggle active state with transform/color changes
- **Input focus:** Border color and ring effects

---

## Third-Party Libraries

### Tailwind CSS
- **Source:** CDN (https://cdn.tailwindcss.com)
- **Version:** Latest (CDN)
- **Usage:** Utility classes, responsive design, custom config
- **Custom config:** Font families, colors, animations, keyframes

### Lucide Icons
- **Source:** CDN (https://unpkg.com/lucide@latest)
- **Version:** Latest
- **Usage:** SVG icons throughout (arrow-right, arrow-down, chevron-left, etc.)
- **Initialization:** `lucide.createIcons()` called on load and after DOM updates

### Three.js
- **Source:** CDN (https://cdnjs.cloudflare.com/ajax/libs/three.js/r128/three.min.js)
- **Version:** r128
- **Usage:** 3D particle system, orbit lines, camera controls
- **Components:** Scene, Camera, Renderer, Geometry, Material, ShaderMaterial

### Lottie Web
- **Source:** CDN (https://cdnjs.cloudflare.com/ajax/libs/lottie-web/5.12.2/lottie.min.js)
- **Version:** 5.12.2
- **Usage:** Mobile menu animation, service visualizations, falling money easter egg
- **Renderers:** SVG (all animations)

### GSAP
- **Source:** Local files (js/gsap/)
- **Files:**
  - gsap.min.js
  - ScrollTrigger.min.js
  - Flip.min.js
- **Usage:** Page transitions, content animations, timeline management
- **Plugins:** ScrollTrigger (registered), Flip (available but not actively used)

### Google Fonts
- **Families:**
  - Cormorant Garamond (300, 400, 500, 600)
  - Inter (200, 300, 400)
  - JetBrains Mono (200, 300, 400)
  - Open Sans (300, 400, 500, 600, 700)
- **Usage:** Typography throughout

### Custom Font
- **Name:** Orange Avenue
- **File:** OrangeAvenueDEMO-Regular.otf
- **Format:** OpenType
- **Usage:** Headlines (`.font-orange-avenue`)

---

## Complex Sections

### Three.js Shader System
- **Vertex Shader:** Lines 2265-2351
  - Simplex noise implementation
  - Position deformation based on noise
  - Mouse interaction
  - Point size variation
- **Fragment Shader:** Lines 2353-2377
  - Soft circle particles
  - Color variation based on noise
  - Alpha blending

### Service Data Structure
- **Location:** Lines 2771-2836
- **Structure:** Array of 4 service objects
- **Properties:** id, name, headline, posterTitle, posterNum, category, suffix, image, staticDescription, slides
- **Slides:** Array of slide objects with title, subtext, category

### Technical Tree Data
- **Location:** Lines 2839-2882
- **Structure:** Nested object with id, name, children
- **Rendering:** Recursive renderTreeItem function
- **State:** treeExpandedItems, treeSelectedItems objects

### Pragmatic Timeline
- **Location:** Lines 1333-1377
- **Animation:** CSS keyframes with timeline cycle (4.2s)
- **Phases:** 4 phases with synchronized animations
- **Dots:** 4 pulsing dots with staggered timing
- **Line:** Sweeping line animation

### Strategic Circular Graph
- **Location:** Lines 1266-1331
- **SVG:** Multiple concentric circles with progress animations
- **Animation:** progressAnimation keyframes
- **Data visualization:** Engagement, Conversion, Retention metrics

### Works Cards Grid
- **Location:** Lines 1580-1692
- **Layout:** CSS Grid (1 column mobile, 2 columns tablet+)
- **States:** Default, selected, expanded
- **Transitions:** Image scale, overlay opacity, content position
- **Expand:** Max-height transition with overflow handling

### Zen Garden Component
- **Location:** Lines 1820-1932
- **Background:** Zen garden image with overlays
- **Rings:** Two counter-rotating rings (60s and 40s reverse)
- **Grid:** CSS grid overlay
- **Scanning:** Animated gradient scan line
- **Content:** 4 slides with auto-rotation (6s interval)
- **Theme:** 4 color themes that cycle with content

### Inquiry Form Modal
- **Location:** Lines 2083-2261
- **Layout:** Centered modal with backdrop blur
- **Form fields:** Name, email, services (multi-select), goals (single-select), notes
- **Animations:** Card selection, pill activation, modal open/close
- **Validation:** Visual feedback on selections

---

## Animation Timing Summary

### Page Transitions
- **Services:** 3.0s orb animation, 1.8s page fade
- **Works:** 2.0s orb animation, 1.2s page fade, 1.0s staggered content
- **About:** 2.5s orb animation, 1.5s page fade, staggered content up to 1.8s
- **Inquire:** 2.0s orb animation, 1.2s page fade, 1.6s headline animation
- **Home:** 2.0s orb fade-in, 1.5s hero block fade

### Content Transitions
- **Service slides:** 200ms fade-out delay, 10ms fade-in delay
- **Service tabs:** 0.3s ease transitions
- **Works cards:** 500ms-1000ms transitions
- **Text scramble:** 0.2s-0.6s depending on element
- **Text reveal:** 0.8s cubic-bezier

### Continuous Animations
- **Particle system:** requestAnimationFrame loop (60fps target)
- **Orbit rotations:** Continuous with time-based offsets
- **SVG rotations:** 20s-120s depending on element
- **Pulse animations:** 1.5s-4s cycles
- **Timeline:** 4.2s cycle with phase animations

---

## Critical Preservation Notes

1. **All animation durations must remain identical**
2. **All easing functions must match exactly**
3. **All GSAP timeline configurations must preserve timing**
4. **All Three.js animation loop values must match**
5. **All Lottie animation configurations must be identical**
6. **All CSS transition values must be preserved**
7. **All z-index layers must remain the same**
8. **All class names and IDs must remain unchanged**
9. **All event listener attachments must be preserved**
10. **All inline style animations must match exactly**
