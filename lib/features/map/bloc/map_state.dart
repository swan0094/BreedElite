part of 'map_bloc.dart';

/// {@template map_state}
/// MapState description
/// {@endtemplate}
class MapState extends Equatable {
  /// {@macro map_state}
  const MapState({
    this.customProperty = 'Default Value',
  });

  /// A description for customProperty
  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  /// Creates a copy of the current MapState with property changes
  MapState copyWith({
    String? customProperty,
  }) {
    return MapState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

/// {@template map_initial}
/// The initial state of MapState
/// {@endtemplate}
class MapInitial extends MapState {
  /// {@macro map_initial}
  const MapInitial() : super();
}
