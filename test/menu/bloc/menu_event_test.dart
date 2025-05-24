import 'package:breedelite/features/menu/bloc/bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MenuEvent', () {
    group('CustomMenuEvent', () {
      test('supports value equality', () {
        expect(
          const CustomMenuEvent(),
          equals(const CustomMenuEvent()),
        );
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const CustomMenuEvent(),
          isNotNull,
        );
      });
    });
  });
}
