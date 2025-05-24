part of 'snackbar_event_bus.dart';

sealed class SnackbarEvent {}

class SnackbarMessageEvent implements SnackbarEvent {
  const SnackbarMessageEvent({this.customMessage});

  final String? customMessage;
}
