import 'package:breedelite/features/mobs/mobs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MobsPage', () {
    testWidgets('renders MobsView', (tester) async {
      await tester.pumpWidget(const MaterialApp(home: MobsPage()));
      expect(find.byType(MobsView), findsOneWidget);
    });
  });
}
