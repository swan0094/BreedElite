import 'package:app_ui/app_ui.dart';
import 'package:breedelite/features/navigation_rail/transitions/nav_rail_transition.dart';
import 'package:breedelite/l10n/l10n.dart';
import 'package:flutter/material.dart';

class DesktopNavigationRail extends StatelessWidget {
  const DesktopNavigationRail({
    required this.railAnimation,
    required this.selectedIndex,
    super.key,
    this.onDestinationSelected,
  });

  final RailAnimation railAnimation;
  final int selectedIndex;
  final ValueChanged<int>? onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    final customColors = context.theme.extension<CustomColors>()!;
    final l10n = context.l10n;

    return NavRailTransition(
      animation: railAnimation,
      backgroundColor: customColors.surfaceContainer!,
      child: NavigationRail(
        groupAlignment: context.isScreenMedium ? 1 : -1,
        backgroundColor: customColors.surfaceContainer,
        selectedIndex: selectedIndex,
        onDestinationSelected: onDestinationSelected,
        destinations: [
          NavigationRailDestination(
            padding: const EdgeInsets.only(bottom: 8),
            icon: const Icon(Icons.home_outlined),
            label: Text(l10n.navigationRailPaddocksTitle),
          ),
          NavigationRailDestination(
            padding: const EdgeInsets.only(bottom: 8),
            icon: const Icon(Icons.notifications_active_outlined),
            label: Text(l10n.navigationRailMobsTitle),
          ),
          NavigationRailDestination(
            padding: const EdgeInsets.only(bottom: 8),
            icon: const Icon(Icons.car_repair_outlined),
            label: Text(l10n.navigationRailMapTitle),
          ),
          NavigationRailDestination(
            padding: const EdgeInsets.only(bottom: 56),
            icon: const Icon(Icons.menu_outlined),
            label: Text(l10n.navigationRailMenutTitle),
          ),
        ],
      ),
    );
  }
}
