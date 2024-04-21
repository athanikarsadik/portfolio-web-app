import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_webapp/features/home/presentation/widgets/on_hover_text_animation.dart';

class IconAndTextWidget extends StatelessWidget {
  final String text;
  final String icon;
  const IconAndTextWidget({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return OnHoverText(builder: (isHovered) {
      final color = isHovered ? Colors.cyanAccent : Colors.grey;
      return Row(
        children: [
          Container(
            width: 25.w,
            height: 25.h,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(color: Colors.white, width: 1)),
            clipBehavior: Clip.hardEdge,
            child: SvgPicture.asset(
              icon,
              alignment: Alignment.center,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            text,
            style: GoogleFonts.kanit(
              textStyle: TextStyle(
                  color: color, fontSize: 16.sp, fontWeight: FontWeight.w500),
            ),
          )
        ],
      );
    });
  }
}
