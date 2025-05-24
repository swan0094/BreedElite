import 'package:breedelite/features/mobs/bloc/bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MobsEvent', () {
    group('CustomMobsEvent', () {
      test('supports value equality', () {
        expect(
          const CustomMobsEvent(),
          equals(const CustomMobsEvent()),
        );
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(const CustomMobsEvent(), isNotNull);
      });
    });
  });
}
