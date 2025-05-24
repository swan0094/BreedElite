import 'package:breedelite/features/menu/bloc/bloc.dart';
import 'package:flutter/material.dart';

/// {@template menu_body}
/// Body of the MenuPage.
///
/// Add what it does
/// {@endtemplate}
class MenuBody extends StatelessWidget {
  /// {@macro menu_body}
  const MenuBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuBloc, MenuState>(
      builder: (context, state) {
        return const Center(child: Text('Menu page'));
      },
    );
  }
}
