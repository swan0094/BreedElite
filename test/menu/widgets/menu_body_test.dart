import 'package:breedelite/features/menu/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MenuBody', () {
    testWidgets('renders Text', (tester) async {
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => MenuBloc(),
          child: const MaterialApp(home: MenuBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
