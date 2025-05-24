import 'package:app_ui/app_ui.dart';
import 'package:breedelite/features/mobs/bloc/bloc.dart';
import 'package:flutter/material.dart';

/// {@template mobs_body}
/// Body of the MobsPage.
///
/// Add what it does
/// {@endtemplate}
class MobsBody extends StatelessWidget {
  /// {@macro mobs_body}
  const MobsBody({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final customTextStyles = theme.extension<CustomTextStyles>();

    return BlocBuilder<MobsBloc, MobsState>(
      builder: (context, state) {
        return Column(
          children: [
            const SizedBox(height: 16),
            Text(
              'Mobs',
              style: customTextStyles?.titleLargeProminent?.copyWith(
                color: theme.colorScheme.onPrimaryContainer,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Write a description here',
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onPrimaryContainer,
              ),
            ),
          ],
        );
      },
    );
  }
}
