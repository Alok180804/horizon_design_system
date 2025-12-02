# Horizon Design System — Layout

Layout utilities help create responsive, consistent screens.

---

## 📏 Spacing Helpers

Use:
- HGap (horizontal spacing)
- VGap (vertical spacing)

Example:
```dart
Column(children: [
  HText.h1("Hello"),
  VGap.md(),
  HPrimaryButton(...),
])
🧱 Grid
HorizonGrid supports:

Mobile (2 columns)

Tablet (3 columns)

Desktop (4+ columns)

Example:

dart
Copy code
HorizonGrid(
  children: [...],
)
📱 Responsive Helpers
Detect breakpoints:

dart
Copy code
HorizonResponsive.isMobile(context)
HorizonResponsive.isTablet(context)
HorizonResponsive.isDesktop(context)
Or adaptive values:

dart
Copy code
HorizonResponsive.value(
  ctx: context,
  mobile: 2,
  tablet: 4,
  desktop: 6,
)
🖼 Screen Wrapper
Use for all pages:

dart
Copy code
HorizonScreenWrapper(
  child: YourContent(),
)
Features:

Safe area

Optional scrolling

Max width (900px for tablets/desktop)

Automatic padding

Never directly use Scaffold in pages — use ScreenWrapper instead.

yaml
Copy code
