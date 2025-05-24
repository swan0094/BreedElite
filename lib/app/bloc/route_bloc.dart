import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'route_event.dart';
part 'route_state.dart';

class RouteBloc extends Bloc<RouteEvent, RouteState> {
  RouteBloc() : super(const RouteInitial()) {
    on<RouteChangedEvent>(_onRouteChangedEvent);
  }

  void _onRouteChangedEvent(
    RouteChangedEvent event,
    Emitter<RouteState> emit,
  ) {
    emit(state.copyWith(route: event.route));
  }
}
