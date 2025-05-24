import 'package:app_ui/app_ui.dart';
import 'package:breedelite/features/navigation_rail/transitions/bottom_bar_transitions.dart';
import 'package:breedelite/l10n/l10n.dart';
import 'package:flutter/material.dart';

class MobileBottomNavigationBar extends StatelessWidget {
  const MobileBottomNavigationBar({
    required this.barAnimation,
    required this.selectedIndex,
    super.key,
    this.onDestinationSelected,
  });

  final BarAnimation barAnimation;
  final int selectedIndex;
  final ValueChanged<int>? onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return BottomBarTransition(
      animation: barAnimation,
      backgroundColor: Colors.white,
      child: NavigationBar(
        destinations: [
          NavigationDestination(
            icon: const Icon(
              Icons.home_outlined,
              size: 28,
            ),
            label: l10n.navigationRailPaddocksTitle,
          ),
          NavigationDestination(
            icon: const Icon(
              Icons.notifications_active_outlined,
              size: 28,
            ),
            label: l10n.navigationRailMobsTitle,
          ),
          NavigationDestination(
            icon: const Icon(
              Icons.car_repair_outlined,
              size: 28,
            ),
            label: l10n.navigationRailMapTitle,
          ),
          NavigationDestination(
            icon: const Icon(
              Icons.menu_outlined,
              size: 28,
            ),
            label: l10n.navigationRailMenutTitle,
          ),
        ],
        selectedIndex: selectedIndex,
        onDestinationSelected: onDestinationSelected,
      ),
    );
  }
}
