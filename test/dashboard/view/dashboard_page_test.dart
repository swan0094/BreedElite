import 'package:breedelite/features/paddocks/paddocks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PaddocksPage', () {
    testWidgets('renders PaddocksView', (tester) async {
      await tester.pumpWidget(const MaterialApp(home: PaddocksPage()));
      expect(find.byType(PaddocksView), findsOneWidget);
    });
  });
}
