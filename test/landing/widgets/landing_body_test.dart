import 'package:breedelite/features/landing/landing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LandingBody', () {
    testWidgets('renders Text', (tester) async {
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => LandingBloc(),
          child: const MaterialApp(home: LandingBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
