import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'mobs_event.dart';
part 'mobs_state.dart';

class MobsBloc extends Bloc<MobsEvent, MobsState> {
  MobsBloc() : super(const MobsInitial()) {
    on<CustomMobsEvent>(_onCustomMobsEvent);
  }

  FutureOr<void> _onCustomMobsEvent(
    CustomMobsEvent event,
    Emitter<MobsState> emit,
  ) {
    // TODO(Alex): Add Logic
  }
}
