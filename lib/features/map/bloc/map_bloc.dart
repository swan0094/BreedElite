import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'map_event.dart';
part 'map_state.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  MapBloc() : super(const MapInitial()) {
    on<CustomMapEvent>(_onCustomMapEvent);
  }

  FutureOr<void> _onCustomMapEvent(
    CustomMapEvent event,
    Emitter<MapState> emit,
  ) {
    // TODO(Alex): Add Logic
  }
}
