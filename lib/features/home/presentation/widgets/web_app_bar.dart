import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_webapp/features/home/presentation/widgets/rich_text_widget.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichTextWidget(
          title: "Start",
        ),
        SizedBox(
          width: 10.w,
        ),
        RichTextWidget(title: "Work"),
        SizedBox(
          width: 10.w,
        ),
        RichTextWidget(title: "Lab"),
        SizedBox(
          width: 10.w,
        ),
        RichTextWidget(title: "About"),
        SizedBox(
          width: 10.w,
        ),
        RichTextWidget(title: "Contact"),
        SizedBox(
          width: 10.w,
        ),
      ],
    );
  }
}
