import 'package:breedelite/features/landing/bloc/bloc.dart';
import 'package:breedelite/features/landing/widgets/landing_body.dart';
import 'package:breedelite/global/widgets/app_page_view.dart';
import 'package:breedelite/global/widgets/breed_elite_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension LandingPageRoute on GoRouter {
  static String get path => '/landing';
  static String get name => 'landing';
  void goToLandingPage() => goNamed(name);
  Future<T?> pushLandingPage<T>() => pushNamed(name);
}

/// {@template landing_page}
/// A description for LandingPage
/// {@endtemplate}
class LandingPage extends StatelessWidget {
  /// {@macro landing_page}
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LandingBloc(),
      child: const BreedEliteScaffold(
        showAppBar: false,
        body: LandingView(),
      ),
    );
  }
}

/// {@template landing_view}
/// Displays the Body of LandingView
/// {@endtemplate}
class LandingView extends StatelessWidget {
  /// {@macro landing_view}
  const LandingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppPageView(
      hasScrollableBody: true,
      body: LandingBody(),
    );
  }
}
