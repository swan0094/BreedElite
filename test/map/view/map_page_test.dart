import 'package:breedelite/features/map/view/map_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MapPage', () {
    testWidgets('renders MapView', (tester) async {
      await tester.pumpWidget(const MaterialApp(home: MapPage()));
      expect(find.byType(MapView), findsOneWidget);
    });
  });
}
