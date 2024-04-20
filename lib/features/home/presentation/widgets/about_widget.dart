import 'package:code_text_field/code_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:highlight/languages/dart.dart';

import 'package:portfolio_webapp/core/consts/constants.dart';
import 'package:portfolio_webapp/core/theme/app_pallete.dart';

class AboutWidget extends StatefulWidget {
  const AboutWidget({super.key});

  @override
  State<AboutWidget> createState() => _AboutWidgetState();
}

class _AboutWidgetState extends State<AboutWidget> {
  CodeController? _codeController;

  @override
  void initState() {
    super.initState();
    const source = Constants.aboutMe;
    // Instantiate the CodeController
    _codeController = CodeController(
      text: source,
      language: dart,
      params: const EditorParams(),
      modifiers: const [
        IndentModifier(),
        CloseBlockModifier(),
        TabModifier(),
      ],
      patternMap: {
        r'0123456789': const TextStyle(color: Colors.red),
        r'".*"': const TextStyle(color: Colors.red),
        r"'.*'": const TextStyle(color: AppPallete.textColor),
        r',;.-': const TextStyle(color: AppPallete.seperatorColor),
        r'//.*': const TextStyle(
            color: Color(0xff494B4D), fontWeight: FontWeight.w300),
      },
      stringMap: {
        "List": const TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.keywordColor),
        "dynamic": const TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.keywordColor),
        "this": const TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.keywordColor),
        "SadikAthanikar": const TextStyle(
            fontWeight: FontWeight.w500, color: Colors.cyanAccent),
        "String": const TextStyle(
            fontWeight: FontWeight.w500, color: Color(0xffaad94c)),
        "class": const TextStyle(
            fontWeight: FontWeight.w500, color: Color(0xffE8341C)),
        "const": const TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.keywordColor),
        "final": const TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.keywordColor),
        "return": const TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.keywordColor),
        "workExperience": const TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.functionNameColor),
        "education": const TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.functionNameColor),
        "skills": const TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.functionNameColor),
      },
    );
  }

  @override
  void dispose() {
    _codeController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppPallete.editorBackground,
      // padding: EdgeInsets.only(left: 30.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "About />",
              style: GoogleFonts.kanit(
                textStyle: TextStyle(
                    color: AppPallete.greyColor,
                    fontSize: 60.sp,
                    fontWeight: FontWeight.w600),
              ),
            ),
            CodeField(
              controller: _codeController!,
              // padding: EdgeInsets.only(left: 230.w),
              enabled: true,
              isDense: true,
              smartQuotesType: SmartQuotesType.enabled,
              wrap: true,
              readOnly: true,
              horizontalScroll: true,
              lineNumberStyle: LineNumberStyle(
                  width: 200.w,
                  margin: 0,
                  textAlign: TextAlign.right,
                  textStyle: const TextStyle(color: Color(0xff8E69C9))),
              textStyle: const TextStyle(fontFamily: 'SourceCode'),
              // enabled: false,
              background: Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
