import 'package:app_ui/app_ui.dart';
import 'package:breedelite/features/map/bloc/bloc.dart';
import 'package:breedelite/features/map/widgets/map_body.dart';
import 'package:breedelite/global/widgets/app_page_view.dart';
import 'package:breedelite/global/widgets/breed_elite_scaffold.dart';
import 'package:breedelite/global/widgets/page_background.dart';
import 'package:breedelite/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension MapPageRoute on GoRouter {
  static String get path => '/map';
  static String get name => 'map';
  void goToMapPage() => goNamed(name);
  Future<T?> pushMapPage<T>() => pushNamed(name);
}

/// {@template map_page}
/// A description for MapPage
/// {@endtemplate}
class MapPage extends StatelessWidget {
  /// {@macro map_page}
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return BlocProvider(
      create: (context) => MapBloc(),
      child: BreedEliteScaffold(
        title: l10n.navigationRailMapTitle,
        body: const MapView(),
      ),
    );
  }
}

/// {@template map_view}
/// Displays the Body of MapView
/// {@endtemplate}
class MapView extends StatelessWidget {
  /// {@macro map_view}
  const MapView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutBuilder(
      small: (context, child) => Padding(
        padding: EdgeInsets.zero,
        child: child,
      ),
      medium: (context, child) => Padding(
        padding: const EdgeInsets.fromLTRB(35, 16, 35, 40),
        child: child,
      ),
      large: (context, child) => Padding(
        padding: const EdgeInsets.fromLTRB(0, 16, 0, 40),
        child: child,
      ),
      child: const AppPageView(
        hasScrollableBody: true,
        background: PageBackground(),
        body: MapBody(),
      ),
    );
  }
}
