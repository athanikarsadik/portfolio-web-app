// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio_webapp/core/theme/app_pallete.dart';

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
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.white, width: 1)),
          clipBehavior: Clip.hardEdge,
          child: Lottie.asset(
            icon,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: GoogleFonts.kanit(
            textStyle: TextStyle(
                color: AppPallete.greyColor,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
