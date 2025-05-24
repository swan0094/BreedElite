import 'package:breedelite/app/app.dart';
import 'package:breedelite/features/landing/landing.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', () {
    testWidgets('renders LandingPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(LandingPage), findsOneWidget);
    });
  });
}
