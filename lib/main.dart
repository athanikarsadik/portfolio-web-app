import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mouse_follower/mouse_follower.dart';
import 'package:portfolio_webapp/core/consts/constants.dart';
import 'package:portfolio_webapp/core/theme/themes.dart';
import 'package:portfolio_webapp/features/home/presentation/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(Constants.width, Constants.height),
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppTheme.darkThemeMode,
            home: MouseFollower(
              defaultMouseCursor: SystemMouseCursors.none,
              mouseStylesStack: [
                MouseStyle(
                  size: const Size(5, 5),
                  latency: const Duration(milliseconds: 50),
                  visibleOnHover: false,
                  decoration: BoxDecoration(
                      color: Colors.limeAccent,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.limeAccent)),
                ),
                MouseStyle(
                  size: const Size(20, 20),
                  latency: const Duration(milliseconds: 200),
                  visibleOnHover: true,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white)),
                ),
              ],
              onHoverMouseCursor: SystemMouseCursors.alias,
              onHoverMouseStylesStack: [
                MouseStyle(
                  size: const Size(10, 10),
                  latency: const Duration(milliseconds: 50),
                  visibleOnHover: false,
                  decoration: BoxDecoration(
                      color: Colors.limeAccent,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.limeAccent)),
                ),
                MouseStyle(
                  size: const Size(40, 40),
                  latency: const Duration(milliseconds: 200),
                  visibleOnHover: true,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.red)),
                ),
              ],
              child: const HomePage(),
            ),
          );
        });
  }
}
