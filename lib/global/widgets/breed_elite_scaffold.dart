import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class BreedEliteScaffold extends StatelessWidget {
  const BreedEliteScaffold({
    required this.body,
    this.title,
    this.bottom,
    this.bottomHeight,
    this.floatingActionButton,
    this.actions,
    this.implyLeading = false,
    this.showAppBar = true,
    super.key,
  });

  final Widget body;
  final String? title;
  final Widget? bottom;
  final double? bottomHeight;
  final Widget? floatingActionButton;
  final List<Widget>? actions;
  final bool implyLeading;
  final bool showAppBar;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final customColors = theme.extension<CustomColors>();

    return Scaffold(
      floatingActionButton: floatingActionButton,
      body: body,
      backgroundColor: theme.colorScheme.surface,
      appBar: showAppBar
          ? AppBar(
              title: title != null
                  ? Text(
                      title!,
                      style: theme.textTheme.titleLarge!.copyWith(
                        color: theme.colorScheme.onSurface,
                      ),
                    )
                  : null,
              toolbarHeight: context.isScreenSmall ? 64 : 88,
              backgroundColor: theme.colorScheme.surface,
              bottom: PreferredSize(
                preferredSize:
                    Size.fromHeight(bottomHeight != null ? bottomHeight! : 1),
                child: bottom != null
                    ? bottom!
                    : Divider(
                        color: customColors?.divider,
                      ),
              ),
              actions: actions,
              automaticallyImplyLeading: implyLeading,
            )
          : null,
    );
  }
}
