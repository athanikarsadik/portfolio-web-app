import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_webapp/features/home/presentation/widgets/text_widget_for_3d_card.dart';

class ThreeDCardWidget extends StatefulWidget {
  const ThreeDCardWidget({super.key});

  @override
  State<ThreeDCardWidget> createState() => _ThreeDCardWidgetState();
}

class _ThreeDCardWidgetState extends State<ThreeDCardWidget> {
  double x = 0;
  double y = 0;
  double amplitude = 0.3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF191D2D),
      body: Center(
        child: MouseRegion(
          onHover: (details) {
            if (y - details.delta.dx < 0) {
              setState(() {
                y = max(y - details.delta.dx / 100, -amplitude);
              });
            } else {
              setState(() {
                y = min(y - details.delta.dx / 100, amplitude);
              });
            }
            if (x + details.delta.dy < 0) {
              setState(() {
                x = max(x + details.delta.dy / 100, -amplitude);
              });
            } else {
              setState(() {
                x = min(x + details.delta.dy / 100, amplitude);
              });
            }
          },
          onExit: (_) {
            // Reset rotation to original position when cursor exits
            setState(() {
              x = 0;
              y = 0;
            });
          },
          child: Transform(
            alignment: FractionalOffset.center,
            transform: Matrix4.identity()
              ..rotateX(x)
              ..rotateY(y),
            child: Container(
              width: 400,
              height: 300,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 300,
                      height: 230,
                      // padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xaa5864f8),
                            blurRadius: 28,
                            offset: Offset(y * 10, -x * 80),
                          )
                        ],
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                      top: 80,
                      child: TextWidgetFor3DCard(
                          index: "01", title: "Welcome to Alrex"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
