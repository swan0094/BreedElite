part of 'route_bloc.dart';

sealed class RouteEvent extends Equatable {
  const RouteEvent();
}

class RouteChangedEvent extends RouteEvent {
  const RouteChangedEvent(this.route);

  final String route;

  @override
  List<Object> get props => [route];
}
