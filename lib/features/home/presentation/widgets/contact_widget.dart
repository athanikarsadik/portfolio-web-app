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
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
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
              padding: EdgeInsets.only(left: 350.w),
              child: Row(
                children: [
                  VerticalDivider(
                    color: Colors.indigoAccent,
                    endIndent: 100.h,
                    indent: 100.h,
                    width: 2,
                  ),
                  SizedBox(
                    width: 30.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Find me on: ",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              color: AppPallete.greyColor,
                              fontSize: 26.sp,
                              // height: 1.5,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Container(
                        height: 200.h,
                        width: 600.w,
                        padding: EdgeInsets.only(left: 50.w),
                        child: GridView.count(
                          // shrinkWrap: true, // Prevent excessive vertical space
                          childAspectRatio: 4,
                          physics:
                              const NeverScrollableScrollPhysics(), // Disable scrolling
                          crossAxisCount: 3,
                          crossAxisSpacing: 1.w,
                          mainAxisSpacing: 1.h,
                          children: const [
                            IconAndTextWidget(
                                text: "Gmail", icon: "assets/svg/email.svg"),
                            IconAndTextWidget(
                                text: "WhatsApp",
                                icon: "assets/svg/whatsapp.svg"),
                            IconAndTextWidget(
                                text: "Phone", icon: "assets/svg/phone.svg"),
                            IconAndTextWidget(
                                text: "Twitter",
                                icon: "assets/svg/twitter.svg"),
                            IconAndTextWidget(
                                text: "Instagram",
                                icon: "assets/svg/instagram.svg"),
                            IconAndTextWidget(
                                text: "Leetcode",
                                icon: "assets/svg/leetcode.svg"),
                            IconAndTextWidget(
                                text: "Github", icon: "assets/svg/github.svg"),
                            IconAndTextWidget(
                                text: "LinkedIn",
                                icon: "assets/svg/linkedin.svg"),
                            // Add more items as needed
                          ],
                        ),
                      ),
                      // Container(
                      //   height: 50,
                      //   width: 150,
                      //   color: Colors.red,
                      // )
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
