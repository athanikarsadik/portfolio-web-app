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
    return Column(
      children: [
        SizedBox(
          width: 100.w,
          child: Text(
            title,
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
          thickness: 5,
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
    );
  }
}
