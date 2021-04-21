import 'package:flutter/material.dart';
import 'package:my_animmated_app/screens/home/widgets/animated_list_view.dart';
import 'package:my_animmated_app/screens/home/widgets/homne_top.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;

  StaggerAnimation({@required this.controller}) :
        containerGrow = CurvedAnimation(
            parent: controller,
            curve: Curves.ease
        ),
        listSlidePosition = EdgeInsetsTween(
            begin: EdgeInsets.only(bottom: 0),
            end: EdgeInsets.only(bottom: 80)
        ).animate(
            CurvedAnimation(
                parent: controller,
                curve: Interval(
                    0.325,
                    0.8,
                    curve: Curves.ease
                )
            )
        );

  final Animation<double> containerGrow;
  final Animation<EdgeInsets> listSlidePosition;

  Widget _buildAnimation(BuildContext context, Widget child) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        HomeTop(
          containerGrow: containerGrow,
        ),
        AnimatedListView(
          listSlidePosition: listSlidePosition,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AnimatedBuilder(
          animation: controller,
          builder: _buildAnimation,
        ),
      ),
    );
  }
}
