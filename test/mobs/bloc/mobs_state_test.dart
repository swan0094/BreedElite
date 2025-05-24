import 'package:breedelite/features/mobs/bloc/bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MobsState', () {
    test('supports value equality', () {
      expect(
        const MobsState(),
        equals(
          const MobsState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const MobsState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const reportState = MobsState(
            customProperty: 'My property',
          );
          expect(
            reportState.copyWith(),
            equals(reportState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const reportState = MobsState(
            customProperty: 'My property',
          );
          const otherMobsState = MobsState(
            customProperty: 'My property 2',
          );
          expect(reportState, isNot(equals(otherMobsState)));

          expect(
            reportState.copyWith(
              customProperty: otherMobsState.customProperty,
            ),
            equals(otherMobsState),
          );
        },
      );
    });
  });
}
