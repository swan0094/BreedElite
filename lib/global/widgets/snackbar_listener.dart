import 'dart:async';

import 'package:app_ui/app_ui.dart';
import 'package:breedelite/global/snackbar_event_bus/snackbar_event_bus.dart';
import 'package:breedelite/global/widgets/event_bus_inherited_widget.dart';
import 'package:flutter/material.dart';

class SnackbarListener extends StatefulWidget {
  const SnackbarListener({required this.child, super.key});

  final Widget child;

  @override
  State<SnackbarListener> createState() => _SnackbarListenerState();
}

class _SnackbarListenerState extends State<SnackbarListener> {
  late StreamSubscription<SnackbarEvent> _snackbarSubscription;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final controller =
          EventBusesProvider.of(context).snackbarBus.streamController;
      _snackbarSubscription = controller.stream.listen((event) {
        if (mounted) {
          final message = switch (event) {
            (final SnackbarMessageEvent _) => event.customMessage,
          };
          context.showSnackBar(message);
        }
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _snackbarSubscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
