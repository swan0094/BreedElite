import 'package:breedelite/features/map/bloc/bloc.dart';
import 'package:flutter/material.dart';

/// {@template map_body}
/// Body of the MapPage.
///
/// Add what it does
/// {@endtemplate}
class MapBody extends StatelessWidget {
  /// {@macro map_body}
  const MapBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapBloc, MapState>(
      builder: (context, state) {
        return const Center(child: Text('Map page'));
      },
    );
  }
}
