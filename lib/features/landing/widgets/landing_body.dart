import 'package:breedelite/app/routes/routes.dart';
import 'package:breedelite/features/landing/bloc/bloc.dart';
import 'package:breedelite/features/paddocks/paddocks.dart';
import 'package:flutter/material.dart';

/// {@template landing_body}
/// Body of the LandingPage.
///
/// Add what it does
/// {@endtemplate}
class LandingBody extends StatelessWidget {
  /// {@macro landing_body}
  const LandingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LandingBloc, LandingState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Landing Page'),
            Padding(
              padding: const EdgeInsets.all(16),
              child: FilledButton(
                onPressed: () => context.router.goToPaddocksPage(),
                child: const Text('Go to paddocks page'),
              ),
            ),
          ],
        );
      },
    );
  }
}
