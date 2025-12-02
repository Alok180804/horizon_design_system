# Horizon Design System — Components

Components are divided into:
- Atoms
- Molecules
- Organisms

This hierarchy ensures scalability, clarity, and reusability.

---

# 🧩 1. Atoms

Atoms are the smallest independent UI pieces.

### Buttons
- HPrimaryButton  
- HSecondaryButton  
- HGhostButton  
- HIconFillButton  

Rules:
- Always height 48px  
- Medium radius  
- Primary color for actions  

### Chips
- HTagChip (selected / unselected)

### Text
Use:
- HText.h1  
- HText.h2  
- HText.body  
- HText.caption  

### Avatar
Circular profile icon wrapper.

### Divider
Consistent 1px Horizon divider.

---

# 🔗 2. Molecules

Molecules combine atoms into functional units.

### Input Field
- Uses surfaceVariant  
- Uses HorizonTypography  
- Uses HorizonRadii.medium  

### Search Bar
- 48px
- pill shape
- mutedText color

### Tiles
- SelectorTile → transportation mode
- MetadataRow → “2h ago”, “Assi Ghat”

### Cards
- QuestCard → main travel cards  
- FeedCard → social content  

### Map Marker Chip
- Used inside map overlay for categories

---

# 🧱 3. Organisms

Organisms are multi-molecule structures.

### Horizon App Bar
- Title left  
- Chat + Bell actions  
- No shadow  

### Horizon Bottom Nav
- 4-icon bottom bar  
- Active → primary  
- Inactive → muted  

### Quest Flow Block
- “Day X” chip  
- Cover photo  
- Title + metadata  

### Map With Cards (Stub)
Expandable for map + carousel layouts.

### Post Creator Toolbar (Stub)
- Photo  
- Location  
- Emoji actions  

---

# 📌 General Component Rules

- Never hardcode padding → use HorizonSpacing  
- Never hardcode radii → use HorizonRadii  
- Use containers with `surface` backgrounds  
- All components must support dark theme  