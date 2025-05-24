import 'package:breedelite/features/landing/bloc/bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LandingState', () {
    test('supports value equality', () {
      expect(
        const LandingState(),
        equals(
          const LandingState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const LandingState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const landingState = LandingState(
            customProperty: 'My property',
          );
          expect(
            landingState.copyWith(),
            equals(landingState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const landingState = LandingState(
            customProperty: 'My property',
          );
          const otherLandingState = LandingState(
            customProperty: 'My property 2',
          );
          expect(landingState, isNot(equals(otherLandingState)));

          expect(
            landingState.copyWith(
              customProperty: otherLandingState.customProperty,
            ),
            equals(otherLandingState),
          );
        },
      );
    });
  });
}
