import 'package:breedelite/features/landing/bloc/bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LandingEvent', () {
    group('CustomLandingEvent', () {
      test('supports value equality', () {
        expect(
          const CustomLandingEvent(),
          equals(const CustomLandingEvent()),
        );
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const CustomLandingEvent(),
          isNotNull,
        );
      });
    });
  });
}
