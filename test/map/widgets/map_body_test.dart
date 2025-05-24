import 'package:breedelite/features/map/map.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MapBody', () {
    testWidgets('renders Text', (tester) async {
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => MapBloc(),
          child: const MaterialApp(home: MapBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
