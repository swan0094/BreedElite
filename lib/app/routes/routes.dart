import 'package:breedelite/app/bloc/route_bloc.dart';
import 'package:breedelite/features/landing/view/landing_page.dart';
import 'package:breedelite/features/map/view/map_page.dart';
import 'package:breedelite/features/menu/view/menu_page.dart';
import 'package:breedelite/features/mobs/view/mobs_page.dart';
import 'package:breedelite/features/navigation_rail/view/navigation_rail_page.dart';
import 'package:breedelite/features/paddocks/view/paddocks_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:path/path.dart';

final pathContext = Context(style: Style.url);

class BreedEliteRouter {
  BreedEliteRouter({this.routeBloc}) {
    _router = GoRouter(
      navigatorKey: BreedEliteRouter.rootNavigatorKey,
      initialLocation: LandingPageRoute.path,
      routes: routes(),
      observers: _observers(),
    );
  }

  final RouteBloc? routeBloc;

  static final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> landingNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> paddocksNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> mobsNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> mapNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> menuNavigatorKey =
      GlobalKey<NavigatorState>();

  late final GoRouter _router;

  GoRouter get router => _router;

  List<NavigatorObserver> _observers() {
    final result = <NavigatorObserver>[];
    return result;
  }

  List<RouteBase> routes() {
    return [
      GoRoute(
        parentNavigatorKey: BreedEliteRouter.rootNavigatorKey,
        path: LandingPageRoute.path,
        name: LandingPageRoute.name,
        pageBuilder: (context, state) => NoTransitionPage(
          key: state.pageKey,
          child: const LandingPage(),
        ),
      ),
      StatefulShellRoute.indexedStack(
        builder: (
          BuildContext context,
          GoRouterState state,
          StatefulNavigationShell navigationShell,
        ) =>
            BreedEliteNavigationRailPage(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            navigatorKey: BreedEliteRouter.paddocksNavigatorKey,
            observers: _observers(),
            routes: <RouteBase>[
              GoRoute(
                path: PaddocksPageRoute.path,
                name: PaddocksPageRoute.name,
                builder: (BuildContext context, GoRouterState state) =>
                    const PaddocksPage(),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: BreedEliteRouter.mobsNavigatorKey,
            observers: _observers(),
            routes: <RouteBase>[
              GoRoute(
                path: MobsPageRoute.path,
                name: MobsPageRoute.name,
                builder: (BuildContext context, GoRouterState state) =>
                    const MobsPage(),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: BreedEliteRouter.mapNavigatorKey,
            observers: _observers(),
            routes: <RouteBase>[
              GoRoute(
                path: MapPageRoute.path,
                name: MapPageRoute.name,
                builder: (BuildContext context, GoRouterState state) =>
                    const MapPage(),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: BreedEliteRouter.menuNavigatorKey,
            observers: _observers(),
            routes: <RouteBase>[
              GoRoute(
                path: MenuPageRoute.path,
                name: MenuPageRoute.name,
                builder: (BuildContext context, GoRouterState state) =>
                    const MenuPage(),
              ),
            ],
          ),
        ],
      ),
    ];
  }
}

// Makes the GoRouter available to context without needing
// GoRouter.of(context)
extension BreedEliteRouterExt on BuildContext {
  GoRouter get router => GoRouter.of(this);
}

// Small fix to get the current location of the router
// https://github.com/flutter/flutter/issues/129833
extension GoRouterLocationExt on GoRouter {
  String get location {
    final lastMatch = routerDelegate.currentConfiguration.last;
    final matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }

  // wrapper for the above to syntax match getting a name
  String get currentLocation => location;

  String? get currentName {
    final lastMatch = routerDelegate.currentConfiguration.last;
    final matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.last.route.name;
  }
}
