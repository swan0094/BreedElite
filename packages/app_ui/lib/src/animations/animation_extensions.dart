import 'package:flutter/animation.dart';

/// {@template offset_animation}
///
/// {@endtemplate}
class BarAnimation extends ReverseAnimation {
  /// {@macro bar_animation}
  BarAnimation({required AnimationController parent})
      : super(
          CurvedAnimation(
            parent: parent,
            curve: const Interval(0, 1 / 5),
            reverseCurve: const Interval(1 / 5, 4 / 5),
          ),
        );
}

/// {@template offset_animation}
///
/// {@endtemplate}
class OffsetAnimation extends CurvedAnimation {
  /// {@macro offset_animation}
  OffsetAnimation({required super.parent})
      : super(
          curve: const Interval(
            2 / 5,
            3 / 5,
            curve: Curves.easeInOutCubicEmphasized,
          ),
          reverseCurve: Interval(
            4 / 5,
            1,
            curve: Curves.easeInOutCubicEmphasized.flipped,
          ),
        );
}

/// {@template offset_animation}
/// Animation for the navigation rail buttons
/// {@endtemplate}
class RailAnimation extends CurvedAnimation {
  /// {@macro rail_animation}
  RailAnimation({required super.parent})
      : super(
          curve: const Interval(0 / 5, 4 / 5),
          reverseCurve: const Interval(3 / 5, 1),
        );
}

/// {@template size_animation}
///
/// {@endtemplate}
class SizeAnimation extends CurvedAnimation {
  /// {@macro size_animation}
  SizeAnimation({required super.parent})
      : super(
          curve: const Interval(
            0 / 5,
            3 / 5,
            curve: Curves.easeInOutCubicEmphasized,
          ),
          reverseCurve: Interval(
            2 / 5,
            1,
            curve: Curves.easeInOutCubicEmphasized.flipped,
          ),
        );
}
