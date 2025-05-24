import 'package:bloc_test/bloc_test.dart';
import 'package:breedelite/features/map/bloc/bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MapBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          MapBloc(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final mapBloc = MapBloc();
      expect(mapBloc.state.customProperty, equals('Default Value'));
    });

    blocTest<MapBloc, MapState>(
      'CustomMapEvent emits nothing',
      build: MapBloc.new,
      act: (bloc) => bloc.add(const CustomMapEvent()),
      expect: () => <MapState>[],
    );
  });
}
