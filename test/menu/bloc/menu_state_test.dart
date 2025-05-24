import 'package:breedelite/features/menu/bloc/bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MenuState', () {
    test('supports value equality', () {
      expect(
        const MenuState(),
        equals(
          const MenuState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const MenuState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const menuState = MenuState(
            customProperty: 'My property',
          );
          expect(
            menuState.copyWith(),
            equals(menuState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const menuState = MenuState(
            customProperty: 'My property',
          );
          const otherMenuState = MenuState(
            customProperty: 'My property 2',
          );
          expect(menuState, isNot(equals(otherMenuState)));

          expect(
            menuState.copyWith(
              customProperty: otherMenuState.customProperty,
            ),
            equals(otherMenuState),
          );
        },
      );
    });
  });
}
