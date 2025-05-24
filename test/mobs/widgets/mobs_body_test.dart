import 'package:breedelite/features/mobs/mobs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MobsBody', () {
    testWidgets('renders Text', (tester) async {
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => MobsBloc(),
          child: const MaterialApp(home: MobsBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
