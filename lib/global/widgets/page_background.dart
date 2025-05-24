import 'package:flutter/material.dart';

class PageBackground extends StatelessWidget {
  const PageBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: ColoredBox(
        color: Colors.white,
      ),
    );
  }
}
