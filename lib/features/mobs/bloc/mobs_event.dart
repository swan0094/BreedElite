part of 'mobs_bloc.dart';

abstract class MobsEvent extends Equatable {
  const MobsEvent();

  @override
  List<Object> get props => [];
}

/// {@template custom_mobs_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomMobsEvent extends MobsEvent {
  /// {@macro custom_mobs_event}
  const CustomMobsEvent();
}
