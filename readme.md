# 🌄 Horizon Design System  
A reusable, scalable UI system powering the **OnQuest** app.

Horizon DS provides:
- 🎨 Foundations (colors, spacing, radii, typography)
- 🧩 Components (atoms → molecules → organisms)
- 🎛 Theming for Material + Cupertino
- 📐 Layout utilities
- 🛠 Helper utilities & extensions
- 📚 Developer-friendly documentation

Designed for **travel storytelling**, **immersive maps**, and **content-rich UI**.

for more: https://docs.google.com/document/d/1eLxVaDmOUVFkI3LZ84G51EuGBUpknyBlNJ9Lkq3sD8g/edit?usp=sharing

---

## 📦 Installation (Local Package)

Inside your main Flutter app’s `pubspec.yaml`:

```yaml
dependencies:
  horizon_design_system:
    path: ../packages/horizon_design_system
Then import everything via the barrel file:

dart
Copy code
import 'package:horizon_design_system/horizon.dart';
🏗️ Folder Structure
css
Copy code
horizon_design_system/
 ├─ lib/
 │    ├─ horizon.dart
 │    └─ src/
 │         ├─ foundations/
 │         ├─ theme/
 │         ├─ components/
 │         │     ├─ atoms/
 │         │     ├─ molecules/
 │         │     └─ organisms/
 │         ├─ layout/
 │         └─ utils/
 ├─ docs/
 ├─ pubspec.yaml
 └─ README.md
🎨 Foundations
Foundational tokens that unify the design language across the app.

Includes:

colors.dart

typography.dart

spacing.dart

radii.dart

motion.dart

elevation.dart

breakpoints.dart

icon_sizes.dart

Example usage:

dart
Copy code
Container(
  color: HorizonColors.surface,
  padding: EdgeInsets.all(HorizonSpacing.md),
);
🎛 Theming
Horizon offers:

horizon_dark_theme.dart (default)

horizon_light_theme.dart

horizon_cupertino_theme.dart

horizon_theme.dart (theme manager)

Example:

dart
Copy code
MaterialApp(
  theme: HorizonTheme.materialDark,
);
🧩 Components
Atoms
Basic building blocks:

Buttons

Chips

Text styles

Avatars

Dividers

Example:

dart
Copy code
HPrimaryButton(
  label: "Start Quest",
  onPressed: () {},
)
Molecules
Functional composite components:

Input field

Search bar

Selector tile

Quest & Feed cards

Bottom sheet header

Map marker chip

Organisms
Larger screen sections:

Horizon App Bar

Bottom Navigation

Quest Flow Block

Map With Cards (stub)

Post Creator Toolbar (stub)

📐 Layout Utilities
screen_wrapper.dart

responsive.dart

spacing.dart

grid.dart

Example:

dart
Copy code
return HorizonScreenWrapper(
  child: Column(children: [
    HText.h1("Explore"),
    HPrimaryButton(label: "Start", onPressed: () {})
  ]),
);
🛠 Utils
platform_adaptive.dart

haptics.dart

horizon_extensions.dart

horizon_icons.dart

animation_helpers.dart

Example:

dart
Copy code
if (PlatformAdaptive.isIOS) {
  // Do iOS-specific UI
}
📚 Documentation
All documentation is in the /docs folder:

foundations.md

theme.md

components.md

layout.md

utils.md

🤝 Contributing
Follow the code standards in docs/code_standards.md

Never hardcode colors or spacings

Add unit tests for components

Ensure cross-platform consistency

🌟 Vision
Horizon DS exists to:

Unify UI across every page of OnQuest

Build faster with consistent patterns

Create a scalable foundation for future apps

Keep design and engineering in sync

🪪 License
Internal use only.
Do not publish to pub.dev.