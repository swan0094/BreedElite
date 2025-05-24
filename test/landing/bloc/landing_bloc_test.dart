import 'package:bloc_test/bloc_test.dart';
import 'package:breedelite/features/landing/bloc/bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LandingBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          LandingBloc(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final landingBloc = LandingBloc();
      expect(landingBloc.state.customProperty, equals('Default Value'));
    });

    blocTest<LandingBloc, LandingState>(
      'CustomLandingEvent emits nothing',
      build: LandingBloc.new,
      act: (bloc) => bloc.add(const CustomLandingEvent()),
      expect: () => <LandingState>[],
    );
  });
}
