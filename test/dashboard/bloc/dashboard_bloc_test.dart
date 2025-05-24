import 'package:bloc_test/bloc_test.dart';
import 'package:breedelite/features/paddocks/bloc/bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PaddocksBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          PaddocksBloc(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final paddocksBloc = PaddocksBloc();
      expect(paddocksBloc.state.customProperty, equals('Default Value'));
    });

    blocTest<PaddocksBloc, PaddocksState>(
      'CustomPaddocksEvent emits nothing',
      build: PaddocksBloc.new,
      act: (bloc) => bloc.add(const CustomPaddocksEvent()),
      expect: () => <PaddocksState>[],
    );
  });
}
