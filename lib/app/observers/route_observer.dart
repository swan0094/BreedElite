import 'package:breedelite/app/bloc/bloc.dart';
import 'package:flutter/material.dart';

class AppRouteObserver extends NavigatorObserver {
  AppRouteObserver(this.bloc);

  final RouteBloc bloc;

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    bloc.add(RouteChangedEvent(route.settings.name ?? ''));
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    bloc.add(RouteChangedEvent(newRoute?.settings.name ?? ''));
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    /// If the route is a Dialog, then it does not update the RouteBloc
    if (route is DialogRoute) {
      return;
    }
    bloc.add(RouteChangedEvent(previousRoute?.settings.name ?? ''));
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    bloc.add(RouteChangedEvent(previousRoute?.settings.name ?? ''));
  }

  @override
  void didStartUserGesture(
    Route<dynamic> route,
    Route<dynamic>? previousRoute,
  ) {
    bloc.add(RouteChangedEvent(route.settings.name ?? ''));
  }

  @override
  void didStopUserGesture() {}
}
