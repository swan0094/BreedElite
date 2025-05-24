import 'package:app_ui/app_ui.dart';
import 'package:breedelite/app/bloc/bloc.dart';
import 'package:breedelite/app/routes/routes.dart';
import 'package:breedelite/global/snackbar_event_bus/snackbar_event_bus.dart';
import 'package:breedelite/global/widgets/event_bus_inherited_widget.dart';
import 'package:breedelite/global/widgets/snackbar_listener.dart';
import 'package:breedelite/l10n/arb/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.background,
      child: AnimatedFadeIn(
        child: _App(theme: BreedEliteTheme.standardLight),
      ),
    );
  }
}

class _App extends StatefulWidget {
  const _App({required this.theme});

  final ThemeData theme;

  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<_App> {
  late final BreedEliteRouter routerConfig;
  final routeBloc = RouteBloc();
  bool hasSetupRouter = false;

  void initRouter() {
    routerConfig = BreedEliteRouter(routeBloc: routeBloc);
    routerConfig.router.routerDelegate.addListener(_onRouteChanged);
  }

  @override
  void dispose() {
    routerConfig.router.routerDelegate.removeListener(_onRouteChanged);
    routeBloc.close();
    super.dispose();
  }

  void _onRouteChanged() {
    final routeName = routerConfig.router.currentName;
    if (routeName == null || routeName.isEmpty) {
      return;
    }
    routeBloc.add(RouteChangedEvent(routerConfig.router.currentName ?? ''));
  }

  @override
  Widget build(BuildContext context) {
    return EventBusesProvider(
      snackbarBus: SnackbarEventBus(),
      child: BlocProvider(
        create: (context) => routeBloc,
        child: Builder(
          builder: (context) {
            if (!hasSetupRouter) {
              initRouter();
              hasSetupRouter = true;
            }
            return MaterialApp.router(
              routerConfig: routerConfig.router,
              title: 'breedelite',
              theme: widget.theme,
              builder: (context, child) {
                return SnackbarListener(
                  child: child!,
                );
              },
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
              supportedLocales: AppLocalizations.supportedLocales,
            );
          },
        ),
      ),
    );
  }
}
