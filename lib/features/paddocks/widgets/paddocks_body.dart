import 'package:breedelite/features/paddocks/bloc/bloc.dart';
import 'package:flutter/material.dart';

/// {@template paddocks_body}
/// Body of the PaddocksPage.
///
/// Add what it does
/// {@endtemplate}
class PaddocksBody extends StatelessWidget {
  /// {@macro paddocks_body}
  const PaddocksBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaddocksBloc, PaddocksState>(
      builder: (context, state) {
        return const Center(child: Text('Paddocks'));
      },
    );
  }
}
