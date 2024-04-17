import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_webapp/core/consts/constants.dart';
import 'package:portfolio_webapp/core/theme/app_pallete.dart';

class IntroTileWidget extends StatelessWidget {
  const IntroTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.tealAccent,
      Colors.deepPurpleAccent,
      Colors.deepPurple,
      Colors.cyanAccent,
      Colors.lightBlueAccent,
      Colors.yellow,
      Colors.lightGreen,
    ];
    final colorizeTextStyle = GoogleFonts.federo(
      textStyle: TextStyle(
        fontSize: 50.sp,
        backgroundColor: Colors.transparent,
        fontWeight: FontWeight.bold,
      ),
    );
    return Container(
      width: Constants.width,
      height: 500.h,
      padding: EdgeInsets.only(top: 45.h, left: 20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Start />",
            style: GoogleFonts.kanit(
              textStyle: TextStyle(
                  color: AppPallete.greyColor,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Hi, my name is, ",
                  style: GoogleFonts.notoSerif(
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 50.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                TextSpan(
                  text: "Sadik Athanikar",
                  style: GoogleFonts.mulish(
                    textStyle: TextStyle(
                        backgroundColor: AppPallete.backgroundColor,
                        color: Colors.cyanAccent,
                        fontSize: 50.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "I ",
                      style: GoogleFonts.notoSerif(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 50.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextSpan(
                      text: "design ",
                      style: GoogleFonts.ptSerif(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontSize: 50.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    TextSpan(
                      text: "& develop ",
                      style: GoogleFonts.notoSerif(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 50.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    colors: colorizeColors,
                    textStyle: colorizeTextStyle,
                    speed: const Duration(milliseconds: 150),
                    'Cross platform apps',
                  ),
                  ColorizeAnimatedText(
                    colors: colorizeColors,
                    textStyle: colorizeTextStyle,
                    speed: const Duration(milliseconds: 150),
                    'webapps',
                  ),
                  ColorizeAnimatedText(
                    colors: colorizeColors,
                    textStyle: colorizeTextStyle,
                    speed: const Duration(milliseconds: 150),
                    'AI powered apps',
                  ),
                ],
                isRepeatingAnimation: true,
                repeatForever: true,
              )
            ],
          ),
          SizedBox(
            height: 100.h,
          ),
          AnimatedTextKit(repeatForever: true, animatedTexts: [
            TypewriterAnimatedText(
              "Let me show you...",
              speed: const Duration(milliseconds: 100),
              curve: Curves.ease,
              textStyle: GoogleFonts.notoSerif(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold),
              ),
            )
          ])
        ],
      ),
    );
  }
}
