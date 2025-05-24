import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PagePercentIndicator extends StatefulWidget {
  const PagePercentIndicator({
    required this.value,
    super.key,
  });
  final double value;

  @override
  State<PagePercentIndicator> createState() => _PagePercentIndicatorState();
}

class _PagePercentIndicatorState extends State<PagePercentIndicator> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = context.theme.colorScheme;

    return LinearPercentIndicator(
      animation: true,
      animationDuration: 1000,
      lineHeight: 4,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      percent: widget.value,
      barRadius: const Radius.circular(50),
      progressColor: colorScheme.primary,
      backgroundColor: colorScheme.secondaryContainer,
    );
  }
}
