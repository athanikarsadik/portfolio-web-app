import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextAndColorForAboutWidget extends StatelessWidget {
  final String text;
  final Color color;
  const TextAndColorForAboutWidget(
      {super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
            height: 1.5.h,
            color: color,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}
