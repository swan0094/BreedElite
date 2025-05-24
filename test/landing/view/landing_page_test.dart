import 'package:breedelite/features/landing/landing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LandingPage', () {
    testWidgets('renders LandingView', (tester) async {
      await tester.pumpWidget(const MaterialApp(home: LandingPage()));
      expect(find.byType(LandingView), findsOneWidget);
    });
  });
}
