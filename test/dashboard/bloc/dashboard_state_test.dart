import 'package:breedelite/features/paddocks/bloc/bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PaddocksState', () {
    test('supports value equality', () {
      expect(
        const PaddocksState(),
        equals(
          const PaddocksState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const PaddocksState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const paddocksState = PaddocksState(
            customProperty: 'My property',
          );
          expect(
            paddocksState.copyWith(),
            equals(paddocksState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const paddocksState = PaddocksState(
            customProperty: 'My property',
          );
          const otherPaddocksState = PaddocksState(
            customProperty: 'My property 2',
          );
          expect(paddocksState, isNot(equals(otherPaddocksState)));

          expect(
            paddocksState.copyWith(
              customProperty: otherPaddocksState.customProperty,
            ),
            equals(otherPaddocksState),
          );
        },
      );
    });
  });
}
