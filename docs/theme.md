# Horizon Design System — Theming

The theme system ensures consistent visuals across the Horizon app.

Horizon supports:
- Material Dark Theme (primary)
- Material Light Theme
- Cupertino Theme
- Theme Manager

---

## 🎨 Dark Theme (Default)

Optimized for:
- Travel storytelling
- Photos
- High contrast
- Vibrant highlights

### Surface Rules
- Background → #0C1220  
- Cards → surface  
- Inputs → surfaceVariant  

### Action Colors
- Primary button → primary  
- Icon buttons → surface  
- Activated tiles → primary border  

---

## ☀️ Light Theme (Optional)

Only used in:
- Web
- Marketing pages
- Optional settings

Light theme uses bright surfaces with same brand primary.

---

## 🍏 Cupertino Theme

Designed for iOS:
- SF Pro typography
- iOS-safe paddings
- Light translucency considerations

---

## 🎛 Theme Manager

Use HorizonTheme to switch themes:

```dart
theme: HorizonTheme.materialDark,
cupertinoOverrideTheme: HorizonTheme.cupertino,
 
or dynamic:
  theme: HorizonTheme.resolveMaterial(HorizonThemeMode.dark),

🧱 Theme Rules

Never hardcode colors in components.

Only use HorizonColors + ThemeData values.

Typography must always use HorizonTypography.