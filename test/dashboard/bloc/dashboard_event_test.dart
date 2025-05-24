import 'package:breedelite/features/paddocks/bloc/bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PaddocksEvent', () {
    group('CustomPaddocksEvent', () {
      test('supports value equality', () {
        expect(
          const CustomPaddocksEvent(),
          equals(const CustomPaddocksEvent()),
        );
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const CustomPaddocksEvent(),
          isNotNull,
        );
      });
    });
  });
}
