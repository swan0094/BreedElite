part of 'landing_bloc.dart';

/// {@template landing_state}
/// LandingState description
/// {@endtemplate}
class LandingState extends Equatable {
  /// {@macro landing_state}
  const LandingState({
    this.customProperty = 'Default Value',
  });

  /// A description for customProperty
  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  /// Creates a copy of the current LandingState with property changes
  LandingState copyWith({
    String? customProperty,
  }) {
    return LandingState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

/// {@template landing_initial}
/// The initial state of LandingState
/// {@endtemplate}
class LandingInitial extends LandingState {
  /// {@macro landing_initial}
  const LandingInitial() : super();
}
