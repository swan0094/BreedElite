part of 'mobs_bloc.dart';

/// {@template mobs_state}
/// MobsState description
/// {@endtemplate}
class MobsState extends Equatable {
  /// {@macro mobs_state}
  const MobsState({
    this.customProperty = 'Default Value',
  });

  /// A description for customProperty
  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  /// Creates a copy of the current MobsState with property changes
  MobsState copyWith({
    String? customProperty,
  }) {
    return MobsState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

/// {@template mobs_initial}
/// The initial state of MobsState
/// {@endtemplate}
class MobsInitial extends MobsState {
  /// {@macro mobs_initial}
  const MobsInitial() : super();
}
