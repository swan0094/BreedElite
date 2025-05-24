import 'package:flutter/material.dart';

/// {@template app_page_view}
/// A widget that constructs a page view consisting of a [background]
/// [body], [footer] pinned to the bottom of the page and an optional
/// list of overlay widgets displayed on top of the [body].
/// {@endtemplate}
class AppPageView extends StatelessWidget {
  /// {@macro app_page_view}
  const AppPageView({
    required this.body,
    this.footer,
    super.key,
    this.background = const SizedBox(),
    this.overlays = const <Widget>[],
    this.hasScrollableBody = false,
  });

  /// A body of the [AppPageView]
  final Widget body;

  /// Sticky footer displayed at the bottom of the [AppPageView]
  final Widget? footer;

  /// An optional background of the [AppPageView]
  final Widget background;

  /// An optional list of overlays displayed on top of the [body]
  final List<Widget> overlays;

  /// An optional flag that is used for `SliverFillRemaining` to indicate if
  /// the body can expand
  final bool hasScrollableBody;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        background,
        SafeArea(
          bottom: false,
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverFillRemaining(
                hasScrollBody: hasScrollableBody,
                child: Column(
                  children: [
                    Expanded(child: body),
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: footer,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        ...overlays,
      ],
    );
  }
}
