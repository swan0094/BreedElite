import 'package:breedelite/features/paddocks/paddocks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PaddocksBody', () {
    testWidgets('renders Text', (tester) async {
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => PaddocksBloc(),
          child: const MaterialApp(home: PaddocksBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
