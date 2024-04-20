import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_webapp/core/theme/app_pallete.dart';
import 'package:portfolio_webapp/features/home/presentation/widgets/staggered_grid_view_widget.dart';
import 'package:timeline_tile/timeline_tile.dart';

class WorkWidget extends StatelessWidget {
  const WorkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.transparent,
            padding: EdgeInsets.only(left: 40),
            child: Text(
              "Work />",
              style: GoogleFonts.kanit(
                textStyle: TextStyle(
                    color: AppPallete.greyColor,
                    fontSize: 60.sp,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Align(alignment: Alignment.center, child: StaggeredGridViewWidget()),
        ],
      ),
    );
  }

  Widget timeLine() {
    return TimelineTile(
      afterLineStyle: LineStyle(color: Colors.blueAccent, thickness: 2.w),
      alignment: TimelineAlign.manual,
      axis: TimelineAxis.vertical,
      startChild: Container(
        // height: Constants.height,
        color: Colors.transparent,
      ),
      beforeLineStyle: const LineStyle(
        color: Colors.blueAccent,
        thickness: 1.5,
      ),
      indicatorStyle: IndicatorStyle(
          color: Colors.blueAccent,
          indicatorXY: 0.019,
          indicator: Container(
            height: 1.h,
            width: 1.w,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          )),
      lineXY: 0.2,
      endChild: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 60.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Work />",
                  style: GoogleFonts.kanit(
                    textStyle: TextStyle(
                        color: AppPallete.greyColor,
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  "Selected Projects...",
                  style: GoogleFonts.kanit(
                    textStyle: TextStyle(
                        color: AppPallete.greyColor,
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
