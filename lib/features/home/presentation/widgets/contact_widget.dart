import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_webapp/core/consts/constants.dart';
import 'package:portfolio_webapp/core/theme/app_pallete.dart';
import 'package:portfolio_webapp/features/home/presentation/widgets/icon_and_text_widget.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppPallete.backgroundColor1,
      width: Constants.width.w,
      height: Constants.height.h,
      padding: EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Contact />",
            style: GoogleFonts.kanit(
              textStyle: TextStyle(
                  color: AppPallete.greyColor,
                  fontSize: 60.sp,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 300.w),
              child: Row(
                children: [
                  VerticalDivider(
                    color: Colors.indigoAccent,
                    endIndent: 30.h,
                    width: 2,
                  ),
                  SizedBox(
                    width: 30.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Find me on: ",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              color: AppPallete.greyColor,
                              fontSize: 22.sp,
                              // height: 1.5,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      IconAndTextWidget(
                          text: "Gmail", icon: "assets/lottie/icon_1.json"),
                      IconAndTextWidget(
                          text: "WhatsApp", icon: "assets/lottie/icon_2.json"),
                      IconAndTextWidget(
                          text: "Phone", icon: "assets/lottie/icon_3.json"),
                      IconAndTextWidget(
                          text: "Twitter", icon: "assets/lottie/icon_4.json"),
                      IconAndTextWidget(
                          text: "Twitter", icon: "assets/lottie/icon_5.json"),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
