import 'package:bloc_test/bloc_test.dart';
import 'package:breedelite/features/mobs/bloc/bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MobsBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          MobsBloc(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final reportBloc = MobsBloc();
      expect(reportBloc.state.customProperty, equals('Default Value'));
    });

    blocTest<MobsBloc, MobsState>(
      'CustomMobsEvent emits nothing',
      build: MobsBloc.new,
      act: (bloc) => bloc.add(const CustomMobsEvent()),
      expect: () => <MobsState>[],
    );
  });
}
