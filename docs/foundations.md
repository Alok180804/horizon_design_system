# Horizon Design System — Foundations

Foundations are the core primitives of the Horizon DS.  
Everything else — components, layouts, themes — is built using these tokens.

Horizon Foundations include:
- Colors
- Typography
- Spacing
- Radii
- Elevation
- Motion
- Breakpoints
- Icon Sizes

Use these tokens everywhere.  
Never hardcode values inside components.

---

## 🎨 Color System

### Design Principles
- Colors are functional, not artistic.
- Every color token has a clear purpose.
- Surfaces are dark first, optimized for photos.

### Core Tokens

| Token | Description | Example |
|-------|-------------|---------|
| `primary` | Main brand color | #FF7A00 |
| `background` | App background | #0C1220 |
| `surface` | Cards, containers | #111A2E |
| `surfaceVariant` | Inputs, subtle surfaces | #1C2842 |
| `divider` | Lines + borders | #2C3B57 |
| `onBackground` | Primary text | White |
| `mutedText` | Secondary text | #AAB4CF |

Usage rules:
- Use `primary` ONLY for actions (buttons, chips, toggles).
- Cards must always use `surface`.
- Inputs must always use `surfaceVariant`.

---

## 🔤 Typography

Typography is **platform-adaptive**:
- Android → Inter  
- iOS → SF Pro  

### Tokens
- `displayLarge` (34px) — Page titles
- `displayMedium` (28px) — Section titles
- `headlineMedium` (20px) — Card titles
- `bodyLarge` (16px) — Paragraphs
- `labelSmall` (12px) — Metadata

Always use `HText` or `HorizonTypography`.
Never hardcode font sizes.

---

## 📏 Spacing System

Spacing values (in px):
xxs = 4
xs = 8
sm = 12
md = 16
lg = 24
xl = 32
xxl = 48


Guidelines:
- Outer padding → `lg`
- Inner card padding → `md`
- Component gap → `md`

---

## 🟦 Radii

Use Horizon’s radii tokens:
- tiny = 4  
- small = 8  
- medium = 12  
- large = 16  
- pill = 999  

Rules:
- Buttons → medium  
- Cards → large  
- Chips → pill  

---

## 🌫 Elevation

3 simple levels:
- level1 → Small shadows  
- level2 → Medium shadows  
- level3 → Large depth shadows  

Inputs and cards should never exceed level2.

---

## 🎥 Motion

Motion is subtle:
- fast = 120ms  
- medium = 240ms  
- slow = 360ms  
- curve = `easeOutCubic`

Motion rules:
- Avoid over-animation  
- Never animate large layout changes repetaedly  
