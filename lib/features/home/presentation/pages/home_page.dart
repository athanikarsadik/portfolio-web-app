import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_webapp/features/home/presentation/bloc/home_bloc.dart';
import 'package:portfolio_webapp/features/home/presentation/widgets/about_widget.dart';
import 'package:portfolio_webapp/features/home/presentation/widgets/contact_widget.dart';
import 'package:portfolio_webapp/features/home/presentation/widgets/rich_text_widget.dart';
import 'package:portfolio_webapp/features/home/presentation/widgets/start_widget.dart';
import 'package:portfolio_webapp/features/home/presentation/widgets/web_app_bar.dart';
import 'package:portfolio_webapp/features/home/presentation/widgets/work_widget.dart';

class HomePage extends StatefulWidget {
  static int pageIndex = 0;
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pages = [StartWidget(), WorkWidget(), AboutWidget(), ContactWidget()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
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
            ],
          ),
          actions: [WebAppBar()],
        ),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is HomeInitialState) {
              return SingleChildScrollView(
                child: Column(
                  children: [pages[state.curPageIndex]],
                ),
              );
            } else {
              return Container(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }
          },
        ));

    // PageView.builder(
    //   allowImplicitScrolling: true,
    //   physics: NeverScrollableScrollPhysics(),
    //   itemBuilder: (context, index) {
    //     index = 1;
    //     if (index == 0) {
    //       return StartWidget();
    //     } else if (index == 1) {
    //       return WorkWidget();
    //     } else if (index == 2) {
    //       return AboutWidget();
    //     } else if (index == 3) {
    //       return ContactWidget();
    //     } else {
    //       return Container();
    //     }
    //   },
    // ));
    /* return Scaffold(
      body: CustomScrollView(
        // physics: AlwaysScrollableScrollPhysics(),
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            expandedHeight: 70.h,
            floating: true,
            foregroundColor: Colors.white,
            primary: true,
            shadowColor: Colors.grey,
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
                if (index == 0) {
                  return StartWidget();
                } else if (index == 1) {
                  return WorkWidget();
                } else if (index == 2) {
                  return AboutWidget();
                } else if (index == 3) {
                  return ContactWidget();
                } else {
                  return Container();
                }
              },
              childCount: 4,
            ),
          ),
        ],
      ),
    );
 */
  }
}


/*



 */