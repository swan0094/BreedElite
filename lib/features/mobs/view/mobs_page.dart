import 'package:app_ui/app_ui.dart';
import 'package:breedelite/features/mobs/bloc/bloc.dart';
import 'package:breedelite/features/mobs/widgets/mobs_body.dart';
import 'package:breedelite/global/widgets/app_page_view.dart';
import 'package:breedelite/global/widgets/breed_elite_scaffold.dart';
import 'package:breedelite/global/widgets/page_background.dart';
import 'package:breedelite/global/widgets/page_percent_indicator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension MobsPageRoute on GoRouter {
  static String get path => '/mobs';
  static String get name => 'mobs';
  void goToMobsPage() => goNamed(name);
  Future<T?> pushMobsPage<T>() => pushNamed(name);
}

/// {@template mobs_page}
/// A description for MobsPage
/// {@endtemplate}
class MobsPage extends StatelessWidget {
  /// {@macro mobs_page}
  const MobsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MobsBloc(),
      child: const BreedEliteScaffold(
        bottom: PagePercentIndicator(
          value: 0.2,
        ),
        bottomHeight: 4,
        body: MobsView(),
      ),
    );
  }
}

/// {@template mobs_view}
/// Displays the Body of MobsView
/// {@endtemplate}
class MobsView extends StatelessWidget {
  /// {@macro mobs_view}
  const MobsView({super.key});

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
        body: MobsBody(),
      ),
    );
  }
}
