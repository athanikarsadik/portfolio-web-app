import 'package:code_text_field/code_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
    final source = Constants.about();
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
        r'".*"': const TextStyle(color: AppPallete.textColor),
        r',;.-:"': const TextStyle(color: AppPallete.seperatorColor),
        r'//.*': const TextStyle(
            color: Color(0xff494B4D), fontWeight: FontWeight.w300),
      },
      stringMap: {
        "_name": TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.variableColor),
        "_philosophy": TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.variableColor),
        "_gender": TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.variableColor),
        "_age": TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.variableColor),
        "name": TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.variableColor),
        "philosophy": TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.variableColor),
        "gender": TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.variableColor),
        "age": TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.variableColor),
        "override": TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.variableColor),
        "List": TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.keywordColor),
        "Map": TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.keywordColor),
        "dynamic": TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.keywordColor),
        "this": TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.keywordColor),
        "AboutSadik": TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.keywordColor),
        "AboutSadikAthanikar": TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.keywordColor),
        "String": TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.keywordColor),
        "class": TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.keywordColor2),
        "abstract": TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.keywordColor2),
        "implements": TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.keywordColor2),
        "interface": TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.keywordColor2),
        "const": TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.keywordColor2),
        "final": TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.keywordColor2),
        "return": TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.keywordColor2),
        "trophyCabinet": TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.functionNameColor),
        "learningCurve": TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.functionNameColor),
        "techStack": TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.functionNameColor),
        "passions": TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.functionNameColor),
        "elevatorPitch": TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.functionNameColor),
        "portfolio": TextStyle(
            fontWeight: FontWeight.w500, color: AppPallete.functionNameColor),
        "rechargeMoments": TextStyle(
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
            )
                .animate()
                .scale(
                    duration: Duration(milliseconds: 350), curve: Curves.easeIn)
                .fadeIn(
                    duration: Duration(milliseconds: 350),
                    curve: Curves.fastLinearToSlowEaseIn),
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
                  textStyle: const TextStyle(
                      color: Color.fromARGB(255, 134, 105, 201))),
              textStyle: GoogleFonts.inter(
                  textStyle: TextStyle(fontFamily: 'SourceCode')),
              // enabled: false,
              background: AppPallete.editorBackground,
            ).animate().slideX(
                duration: Duration(milliseconds: 350),
                curve: Curves.fastEaseInToSlowEaseOut),
          ],
        ),
      ),
    );
  }
}
