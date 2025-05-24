import 'package:breedelite/features/menu/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MenuPage', () {
    testWidgets('renders MenuView', (tester) async {
      await tester.pumpWidget(const MaterialApp(home: MenuPage()));
      expect(find.byType(MenuView), findsOneWidget);
    });
  });
}
