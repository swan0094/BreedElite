part of 'map_bloc.dart';

abstract class MapEvent extends Equatable {
  const MapEvent();

  @override
  List<Object> get props => [];
}

/// {@template custom_map_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomMapEvent extends MapEvent {
  /// {@macro custom_map_event}
  const CustomMapEvent();
}
