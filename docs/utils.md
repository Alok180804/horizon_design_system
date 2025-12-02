# 📄 **utils.md**
```md
# Horizon Design System — Utilities

Utilities support layout, animations, icons, haptics, and platform logic.

---

## 🌐 Platform Adaptive

Detect platform safely:

```dart
PlatformAdaptive.isIOS
PlatformAdaptive.isAndroid
PlatformAdaptive.isMobile
PlatformAdaptive.isDesktop
Use this for conditional layouts.

✨ Horizon Extensions
A BuildContext extension:

dart
Copy code
context.primary
context.surface
context.textStyles
context.theme
Use these instead of accessing Theme.of(context) manually.

🔔 Haptics
Use HorizonHaptics for consistent vibrations:

dart
Copy code
HorizonHaptics.light()
HorizonHaptics.medium()
HorizonHaptics.heavy()
🎞 Animation Helpers
Use fade-in, slide, and pre-made DS animations:

dart
Copy code
HorizonAnim.fadeIn(child: ...)
All durations come from HorizonMotion.

🧩 Horizon Icons
Use the unified icon library:

dart
Copy code
HorizonIcons.home
HorizonIcons.search
HorizonIcons.profile
Never directly use Material Icons — wrap through HorizonIcons for consistency.




