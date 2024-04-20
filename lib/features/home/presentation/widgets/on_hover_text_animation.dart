import 'package:flutter/material.dart';
import 'package:sprung/sprung.dart';

class OnHoverText extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  const OnHoverText({super.key, required this.builder});

  @override
  State<OnHoverText> createState() => _OnHoverTextState();
}

class _OnHoverTextState extends State<OnHoverText> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()
      // ..translate(8, 0, 0)
      ..scale(1.15);
    final transforms = isHovered ? hoveredTransform : Matrix4.identity();
    return MouseRegion(
        onEnter: (event) => onEntered(true),
        onExit: (event) => onEntered(false),
        child: AnimatedContainer(
            curve: Sprung.overDamped,
            transform: transforms,
            duration: Duration(milliseconds: 200),
            child: widget.builder(isHovered)));
  }

  void onEntered(bool isHovered) => setState(() {
        this.isHovered = isHovered;
      });
}
