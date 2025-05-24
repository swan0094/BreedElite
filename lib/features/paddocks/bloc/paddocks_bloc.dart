import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'paddocks_event.dart';
part 'paddocks_state.dart';

class PaddocksBloc extends Bloc<PaddocksEvent, PaddocksState> {
  PaddocksBloc() : super(const PaddocksInitial()) {
    on<CustomPaddocksEvent>(_onCustomPaddocksEvent);
  }

  FutureOr<void> _onCustomPaddocksEvent(
    CustomPaddocksEvent event,
    Emitter<PaddocksState> emit,
  ) {
    // TODO(Alex): Add Logic
  }
}
