part of 'landing_bloc.dart';

abstract class LandingEvent  extends Equatable {
  const LandingEvent();

  @override
  List<Object> get props => [];

}

/// {@template custom_landing_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomLandingEvent extends LandingEvent {
  /// {@macro custom_landing_event}
  const CustomLandingEvent();
}
