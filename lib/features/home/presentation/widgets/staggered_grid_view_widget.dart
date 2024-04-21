import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio_webapp/features/home/presentation/widgets/3d_card_widget.dart';

class StaggeredGridViewWidget extends StatelessWidget {
  const StaggeredGridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverStairedGridDelegate(
        crossAxisSpacing: 48,
        mainAxisSpacing: 24,
        startCrossAxisDirectionReversed: true,
        pattern: [
          // StairedGridTile(0.5, 0.9),
          StairedGridTile(0.6, 1),
          StairedGridTile(0.3, 1),
        ],
      ),
      childrenDelegate: SliverChildBuilderDelegate(
        childCount: 5,
        (context, index) => Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                color: Colors.transparent,
                child: Lottie.asset(
                  'assets/lottie/bg_anim.json',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: ThreeDCardWidget()
                  .animate()
                  .slideX(
                      duration: Duration(milliseconds: 350),
                      curve: Curves.decelerate)
                  .fadeIn(),
            )
          ],
        ),
      ),
    );
  }
}
