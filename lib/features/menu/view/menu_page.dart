import 'package:app_ui/app_ui.dart';
import 'package:breedelite/features/menu/bloc/bloc.dart';
import 'package:breedelite/features/menu/widgets/menu_body.dart';
import 'package:breedelite/global/widgets/app_page_view.dart';
import 'package:breedelite/global/widgets/breed_elite_scaffold.dart';
import 'package:breedelite/global/widgets/page_background.dart';
import 'package:breedelite/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension MenuPageRoute on GoRouter {
  static String get path => '/menu';
  static String get name => 'menu';
  void goTMenutPage() => goNamed(name);
  Future<T?> pushMenuPage<T>() => pushNamed(name);
}

/// {@template menu_page}
/// A description for MenuPage
/// {@endtemplate}
class MenuPage extends StatelessWidget {
  /// {@macro menu_page}
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return BlocProvider(
      create: (context) => MenuBloc(),
      child: BreedEliteScaffold(
        title: l10n.navigationRailMenutTitle,
        body: const MenuView(),
      ),
    );
  }
}

/// {@template menu_view}
/// Displays the Body of MenuView
/// {@endtemplate}
class MenuView extends StatelessWidget {
  /// {@macro menu_view}
  const MenuView({super.key});

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
        body: MenuBody(),
      ),
    );
  }
}
