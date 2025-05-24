import 'package:breedelite/features/map/bloc/bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MapState', () {
    test('supports value equality', () {
      expect(
        const MapState(),
        equals(
          const MapState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const MapState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const mapState = MapState(
            customProperty: 'My property',
          );
          expect(
            mapState.copyWith(),
            equals(mapState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const mapState = MapState(
            customProperty: 'My property',
          );
          const otherMapState = MapState(
            customProperty: 'My property 2',
          );
          expect(mapState, isNot(equals(otherMapState)));

          expect(
            mapState.copyWith(
              customProperty: otherMapState.customProperty,
            ),
            equals(otherMapState),
          );
        },
      );
    });
  });
}
