import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RichTextWidget extends StatelessWidget {
  final String title;
  final double? size;
  final Color? color;
  const RichTextWidget({super.key, required this.title, this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: title,
            style: GoogleFonts.notoSerif(
              textStyle: TextStyle(
                  color: color ?? Colors.white,
                  fontSize: size != null ? size : 20.sp,
                  fontWeight: FontWeight.bold),
            ),
          ),
          TextSpan(
            text: " />",
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 20.sp,
            ),
          ),
        ],
      ),
    );
  }
}
