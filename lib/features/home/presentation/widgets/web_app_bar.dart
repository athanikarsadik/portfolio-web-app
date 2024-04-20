import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_webapp/core/theme/app_pallete.dart';
import 'package:portfolio_webapp/features/home/presentation/bloc/home_bloc.dart';
import 'package:portfolio_webapp/features/home/presentation/widgets/on_hover_text_animation.dart';
import 'package:portfolio_webapp/features/home/presentation/widgets/rich_text_widget.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is HomeInitialState) {
          final selectedColor = Colors.cyanAccent;
          return Row(
            children: [
              OnHoverText(builder: (isHovered) {
                final color = isHovered ? AppPallete.gradient2 : null;
                return GestureDetector(
                  onTap: () {
                    context.read<HomeBloc>().add(AppBarClickEvent(index: 0));
                  },
                  child: RichTextWidget(
                    title: "Start",
                    color: state.curPageIndex == 0 ? selectedColor : color,
                  ),
                );
              }),
              SizedBox(
                width: 10.w,
              ),
              OnHoverText(builder: (isHovered) {
                final color = isHovered ? AppPallete.gradient2 : null;
                return GestureDetector(
                  onTap: () {
                    context.read<HomeBloc>().add(AppBarClickEvent(index: 1));
                  },
                  child: RichTextWidget(
                    title: "Work",
                    color: state.curPageIndex == 1 ? selectedColor : color,
                  ),
                );
              }),
              SizedBox(
                width: 10.w,
              ),
              OnHoverText(builder: (isHovered) {
                final color = isHovered ? AppPallete.gradient2 : null;
                return GestureDetector(
                  onTap: () {
                    context.read<HomeBloc>().add(AppBarClickEvent(index: 2));
                  },
                  child: RichTextWidget(
                    title: "About",
                    color: state.curPageIndex == 2 ? selectedColor : color,
                  ),
                );
              }),
              SizedBox(
                width: 10.w,
              ),
              OnHoverText(builder: (isHovered) {
                final color = isHovered ? AppPallete.gradient2 : null;
                return GestureDetector(
                  onTap: () {
                    context.read<HomeBloc>().add(AppBarClickEvent(index: 3));
                  },
                  child: RichTextWidget(
                    title: "Contact",
                    color: state.curPageIndex == 3 ? selectedColor : color,
                  ),
                );
              }),
              SizedBox(
                width: 10.w,
              ),
            ],
          );
        } else {
          return Container();
        }
      },
    );
  }
}
