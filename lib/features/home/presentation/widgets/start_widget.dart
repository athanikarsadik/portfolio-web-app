import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio_webapp/core/consts/constants.dart';
import 'package:portfolio_webapp/core/theme/app_pallete.dart';
import 'package:portfolio_webapp/features/home/presentation/widgets/animated_image_container.dart';
import 'package:portfolio_webapp/features/home/presentation/widgets/intro_tile_widget.dart';
import 'package:timeline_tile/timeline_tile.dart';

class StartWidget extends StatelessWidget {
  const StartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            width: Constants.width,
            height: Constants.height,
            color: AppPallete.backgroundColor,
            child: Lottie.asset(
              'assets/lottie/bg_anim_2.json',
              fit: BoxFit.contain,
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: TimelineTile(
              isFirst: true,
              afterLineStyle:
                  LineStyle(color: Colors.blueAccent, thickness: 2.w),
              alignment: TimelineAlign.manual,
              axis: TimelineAxis.vertical,
              startChild: Container(
                // height: Constants.height,
                // color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: AnimatedImageContainer(),
              )
                  .animate()
                  .slideX(
                    delay: Duration(milliseconds: 350),
                  )
                  .fade(duration: Duration(milliseconds: 300)),
              beforeLineStyle:
                  const LineStyle(color: Colors.blueAccent, thickness: 1.5),
              indicatorStyle: IndicatorStyle(
                  color: Colors.blueAccent,
                  indicatorXY: 0.40,
                  indicator: Container(
                    height: 100.h,
                    width: 100.w,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  )),
              lineXY: 0.2,
              endChild: IntroTileWidget()),
        ),
      ],
    );
  }
}
