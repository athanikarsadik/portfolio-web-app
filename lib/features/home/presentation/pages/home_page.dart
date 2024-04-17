import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio_webapp/core/consts/constants.dart';
import 'package:portfolio_webapp/core/theme/app_pallete.dart';
import 'package:portfolio_webapp/features/home/presentation/widgets/3d_card_widget.dart';
import 'package:portfolio_webapp/features/home/presentation/widgets/intro_tile_widget.dart';
import 'package:portfolio_webapp/features/home/presentation/widgets/rich_text_widget.dart';
import 'package:portfolio_webapp/features/home/presentation/widgets/web_app_bar.dart';
import 'package:portfolio_webapp/features/home/presentation/widgets/work_widget.dart';
import 'package:timeline_tile/timeline_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Controllers
  late ScrollController _scrollController;

  @override
  void initState() {
    // initialize scroll controllers
    _scrollController = ScrollController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        // physics: AlwaysScrollableScrollPhysics(),
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            expandedHeight: 70.h,
            floating: true,
            surfaceTintColor: Colors.transparent,
            forceMaterialTransparency: true,
            flexibleSpace: Padding(
              padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 20.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("<  ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 30.sp,
                      )),
                  RichTextWidget(
                    title: "SaD!k",
                    size: 50.sp,
                  ),
                  Spacer(),
                  WebAppBar()
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Column(
                  children: [
                    Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: Constants.width,
                            height: Constants.height,
                            color: AppPallete.backgroundColor,
                            child: Lottie.asset(
                              'assets/lottie/bg_anim_2.json',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: TimelineTile(
                              isFirst: true,
                              afterLineStyle: LineStyle(
                                  color: Colors.blueAccent, thickness: 2.w),
                              alignment: TimelineAlign.manual,
                              axis: TimelineAxis.vertical,
                              startChild: Container(
                                height: Constants.height,
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                              ),
                              beforeLineStyle: LineStyle(
                                  color: Colors.blueAccent, thickness: 1.5),
                              indicatorStyle: IndicatorStyle(
                                  color: Colors.blueAccent,
                                  indicatorXY: 0.25,
                                  indicator: Container(
                                    height: 100.h,
                                    width: 100.w,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                  )),
                              lineXY: 0.2,
                              endChild: IntroTileWidget()),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            color: AppPallete.backgroundColor3,
                            width: Constants.width,
                            height: Constants.height,
                            child: Lottie.asset(
                              'assets/lottie/bg_anim.json',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: TimelineTile(
                            afterLineStyle: LineStyle(
                                color: Colors.blueAccent, thickness: 2.w),
                            alignment: TimelineAlign.manual,
                            axis: TimelineAxis.vertical,
                            startChild: Container(
                              height: Constants.height,
                              color: Colors.transparent,
                            ),
                            beforeLineStyle: LineStyle(
                              color: Colors.blueAccent,
                              thickness: 1.5,
                            ),
                            indicatorStyle: IndicatorStyle(
                                color: Colors.blueAccent,
                                indicatorXY: 0.25,
                                indicator: Container(
                                  height: 100.h,
                                  width: 100.w,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                )),
                            lineXY: 0.2,
                            endChild: ThreeDCardWidget(),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
