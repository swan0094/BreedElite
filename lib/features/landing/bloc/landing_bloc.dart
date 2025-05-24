import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'landing_event.dart';
part 'landing_state.dart';

class LandingBloc extends Bloc<LandingEvent, LandingState> {
  LandingBloc() : super(const LandingInitial()) {
    on<CustomLandingEvent>(_onCustomLandingEvent);
  }

  FutureOr<void> _onCustomLandingEvent(
    CustomLandingEvent event,
    Emitter<LandingState> emit,
  ) {
    // TODO(Alex): Add Logic
  }
}
