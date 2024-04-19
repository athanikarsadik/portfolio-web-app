import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidgetFor3DCard extends StatelessWidget {
  final String title;
  final String index;
  const TextWidgetFor3DCard(
      {super.key, required this.index, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.w,
      height: 360.h,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 150.w,
            child: Text(
              title,
              softWrap: true,
              textAlign: TextAlign.left,
              style: GoogleFonts.mulish(
                textStyle: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Divider(
            color: Colors.white,
            height: 5,
            thickness: 5,
            endIndent: 50.w,
          ),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            width: 100.w,
            child: Text(
              index,
              style: GoogleFonts.mulish(
                textStyle: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),
          ),
        ],
      ),
    );
  }
}
