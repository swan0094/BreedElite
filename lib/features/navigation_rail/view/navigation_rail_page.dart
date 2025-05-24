import 'package:breedelite/features/navigation_rail/widgets/navigation_rail_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// {@template breedelite_navigation_rail_page}
/// The main navigation rail, seen on the bottom on mobile
/// and the side on desktop/tablet.
/// {@endtemplate}
class BreedEliteNavigationRailPage extends StatelessWidget {
  /// {@macro breedelite_navigation_rail_page}
  const BreedEliteNavigationRailPage({
    required this.navigationShell,
    super.key,
  });

  /// The navigation shell and container for the branch Navigators.
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BreedEliteNavigationRailView(
        navigationShell: navigationShell,
      ),
    );
  }
}

/// {@template breedelite_navigation_rail_view}
/// Displays the Body of BreedEliteNavigationRailView
/// {@endtemplate}
class BreedEliteNavigationRailView extends StatelessWidget {
  /// {@macro breedelite_navigation_rail_view}
  const BreedEliteNavigationRailView({
    required this.navigationShell,
    super.key,
  });

  /// The navigation shell and container for the branch Navigators.
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return BreedEliteNavigationRailBody(
      navigationShell: navigationShell,
    );
  }
}
