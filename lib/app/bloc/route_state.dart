// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'route_bloc.dart';

class RouteState extends Equatable {
  const RouteState({
    this.route = '/',
  });

  final String route;

  @override
  List<Object> get props => [route];

  RouteState copyWith({
    String? route,
  }) {
    return RouteState(
      route: route ?? this.route,
    );
  }
}

final class RouteInitial extends RouteState {
  const RouteInitial();
}
