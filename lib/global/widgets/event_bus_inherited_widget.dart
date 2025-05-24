import 'package:breedelite/global/snackbar_event_bus/snackbar_event_bus.dart';
import 'package:flutter/material.dart';

class EventBusesProvider extends InheritedWidget {
  const EventBusesProvider({
    required super.child,
    required this.snackbarBus,
    super.key,
  });

  final SnackbarEventBus snackbarBus;

  static EventBusesProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<EventBusesProvider>()!;
  }

  @override
  bool updateShouldNotify(EventBusesProvider oldWidget) {
    return true;
  }
}
