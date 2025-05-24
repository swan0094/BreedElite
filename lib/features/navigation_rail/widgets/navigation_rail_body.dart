import 'package:app_ui/app_ui.dart';
import 'package:breedelite/features/navigation_rail/widgets/desktop_navigation_rail.dart';
import 'package:breedelite/features/navigation_rail/widgets/mobile_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BreedEliteNavigationRailBody extends StatefulWidget {
  const BreedEliteNavigationRailBody({
    required this.navigationShell,
    super.key,
  });

  final StatefulNavigationShell navigationShell;

  @override
  State<BreedEliteNavigationRailBody> createState() =>
      _BreedEliteNavigationRailBodyState();
}

class _BreedEliteNavigationRailBodyState
    extends State<BreedEliteNavigationRailBody> with TickerProviderStateMixin {
  late final _controller = AnimationController(
    duration: const Duration(milliseconds: 1000),
    reverseDuration: const Duration(milliseconds: 1250),
    value: 0,
    vsync: this,
  );

  late final _railAnimation = RailAnimation(parent: _controller);
  late final _barAnimation = BarAnimation(parent: _controller);
  late final PageController _pageController;
  bool controllerInitialized = false;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final status = _controller.status;
    if (!context.isScreenSmall) {
      if (status != AnimationStatus.forward &&
          status != AnimationStatus.completed) {
        _controller.forward();
      }
    } else {
      if (status != AnimationStatus.reverse &&
          status != AnimationStatus.dismissed) {
        _controller.reverse();
      }
    }
    if (!controllerInitialized) {
      controllerInitialized = true;
      _controller.value = !context.isScreenSmall ? 1 : 0;
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) {
        return Scaffold(
          body: Row(
            children: [
              DesktopNavigationRail(
                railAnimation: _railAnimation,
                selectedIndex: widget.navigationShell.currentIndex,
                onDestinationSelected: (index) {
                  setState(() {
                    widget.navigationShell.goBranch(
                      index,
                      initialLocation:
                          index == widget.navigationShell.currentIndex,
                    );
                  });
                },
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: PageView(
                        physics: const NeverScrollableScrollPhysics(),
                        controller: _pageController,
                        children: [widget.navigationShell],
                        onPageChanged: (index) {
                          setState(() {
                            widget.navigationShell.goBranch(
                              index,
                              initialLocation:
                                  index == widget.navigationShell.currentIndex,
                            );
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: MobileBottomNavigationBar(
            barAnimation: _barAnimation,
            selectedIndex: widget.navigationShell.currentIndex,
            onDestinationSelected: (index) {
              widget.navigationShell.goBranch(
                index,
                initialLocation: index == widget.navigationShell.currentIndex,
              );
            },
          ),
        );
      },
    );
  }
}
