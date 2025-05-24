import 'package:breedelite/features/paddocks/bloc/bloc.dart';
import 'package:breedelite/features/paddocks/widgets/paddocks_body.dart';
import 'package:breedelite/global/widgets/breed_elite_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension PaddocksPageRoute on GoRouter {
  static String get path => '/paddocks';
  static String get name => 'paddocks';
  void goToPaddocksPage() => goNamed(name);
  Future<T?> pushPaddocksPage<T>() => pushNamed(name);
}

/// {@template paddocks_page}
/// A description for PaddocksPage
/// {@endtemplate}
class PaddocksPage extends StatelessWidget {
  /// {@macro paddocks_page}
  const PaddocksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PaddocksBloc(),
      child: const BreedEliteScaffold(
        showAppBar: false,
        body: PaddocksView(),
      ),
    );
  }
}

/// {@template paddocks_view}
/// Displays the Body of PaddocksView
/// {@endtemplate}
class PaddocksView extends StatelessWidget {
  /// {@macro paddocks_view}
  const PaddocksView({super.key});

  @override
  Widget build(BuildContext context) {
    return const PaddocksBody();
  }
}
