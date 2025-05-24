import 'package:breedelite/features/map/bloc/bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MapEvent', () {
    group('CustomMapEvent', () {
      test('supports value equality', () {
        expect(
          const CustomMapEvent(),
          equals(const CustomMapEvent()),
        );
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const CustomMapEvent(),
          isNotNull,
        );
      });
    });
  });
}
