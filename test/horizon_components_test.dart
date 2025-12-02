import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:horizon_design_system/horizon.dart';

void main() {
  group("Horizon Design System — Smoke Tests", () {
    testWidgets("Primary Button loads", (tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: HPrimaryButton(label: "Test", onPressed: null),
      ));
      expect(find.text("Test"), findsOneWidget);
    });

    testWidgets("Secondary Button loads", (tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: HSecondaryButton(label: "Secondary", onPressed: null),
      ));
      expect(find.text("Secondary"), findsOneWidget);
    });

    testWidgets("Ghost Button loads", (tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: HGhostButton(child: Icon(Icons.add)),
      ));
      expect(find.byIcon(Icons.add), findsOneWidget);
    });

    testWidgets("Icon Fill Button loads", (tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: HIconFillButton(icon: Icons.favorite),
      ));
      expect(find.byIcon(Icons.favorite), findsOneWidget);
    });

    testWidgets("Tag Chip loads", (tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: HTagChip(label: "Tag"),
      ));
      expect(find.text("Tag"), findsOneWidget);
    });

    testWidgets("HText renders all styles", (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Column(
          children: [
            HText.h1("h1"),
            HText.h2("h2"),
            HText.body("body"),
            HText.caption("caption"),
          ],
        ),
      ));
      expect(find.text("h1"), findsOneWidget);
      expect(find.text("h2"), findsOneWidget);
      expect(find.text("body"), findsOneWidget);
      expect(find.text("caption"), findsOneWidget);
    });

    // ─────────── MOLECULES ───────────

    testWidgets("Input Field loads", (tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: HorizonInputField(hint: "Enter something"),
      ));
      expect(find.text("Enter something"), findsOneWidget);
    });

    testWidgets("Search Bar loads", (tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: HorizonSearchBar(hint: "Search"),
      ));
      expect(find.text("Search"), findsOneWidget);
    });

    testWidgets("Selector Tile loads", (tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: SelectorTile(
          label: "Train",
          icon: Icons.train,
          selected: false,
        ),
      ));
      expect(find.text("Train"), findsOneWidget);
      expect(find.byIcon(Icons.train), findsOneWidget);
    });

    testWidgets("Metadata Row loads", (tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: MetadataRow(icon: Icons.access_time, text: "2h"),
      ));
      expect(find.text("2h"), findsOneWidget);
    });

    testWidgets("Quest Card loads", (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: QuestCard(
          title: "Trip to Varanasi",
          subtitle: "Assi Ghat",
          tag: "Trending",
          imageUrl: "https://via.placeholder.com/300",
        ),
      ));
      expect(find.text("Trip to Varanasi"), findsOneWidget);
      expect(find.text("Assi Ghat"), findsOneWidget);
    });

    testWidgets("Feed Card loads", (tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: FeedCard(
          username: "Alok",
          timeAgo: "2h ago",
          title: "My Trip",
          imageUrl: "https://via.placeholder.com/300",
        ),
      ));
      expect(find.text("Alok"), findsOneWidget);
      expect(find.text("My Trip"), findsOneWidget);
    });

    testWidgets("Map Marker Chip loads", (tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: MapMarkerChip(label: "Cafe", icon: Icons.local_cafe),
      ));
      expect(find.text("Cafe"), findsOneWidget);
    });

    testWidgets("Bottom Sheet Header loads", (tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: BottomSheetHeader(title: "Filters"),
      ));
      expect(find.text("Filters"), findsOneWidget);
    });

    // ─────────── ORGANISMS ───────────

    testWidgets("Horizon App Bar loads", (tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
          appBar: HorizonAppBar(title: "Explore"),
        ),
      ));
      expect(find.text("Explore"), findsOneWidget);
    });

    testWidgets("Horizon Bottom Nav loads", (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: HorizonBottomNav(currentIndex: 0, onTap: (_) {}),
      ));
      expect(find.byIcon(Icons.home_outlined), findsOneWidget);
    });

    testWidgets("Quest Flow Block loads", (tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: QuestFlowBlock(
          dayNumber: 1,
          date: "Jan 1",
          title: "Morning Walk",
          timeOfDay: "6 AM",
          imageUrl: "https://via.placeholder.com/300",
          location: "Varanasi",
        ),
      ));
      expect(find.text("Morning Walk"), findsOneWidget);
    });

    testWidgets("Map With Cards loads (stub)", (tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: MapWithCards(),
      ));
      expect(find.byType(Placeholder), findsOneWidget);
    });

    testWidgets("Post Creator Toolbar loads (stub)", (tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: PostCreatorToolbar(),
      ));
      expect(find.byIcon(Icons.image), findsOneWidget);
    });

    // ─────────── LAYOUT & UTILS ───────────

    testWidgets("Screen Wrapper loads", (tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: HorizonScreenWrapper(
          child: Text("Inside"),
        ),
      ));
      expect(find.text("Inside"), findsOneWidget);
    });

    test("PlatformAdaptive works", () {
      // Just ensure it doesn't throw
      expect(PlatformAdaptive.isMobile, isNotNull);
    });

    test("HorizonIcon constants exist", () {
      expect(HorizonIcons.home, isNotNull);
      expect(HorizonIcons.search, isNotNull);
    });
  });
}

