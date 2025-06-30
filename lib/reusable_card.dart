import 'package:flutter/material.dart';
class reusableCard extends StatelessWidget {
  // const reusableCard({
  //   super.key,
  // });
  reusableCard({super.key, required this.color, this.cardChildWidget});

  final Color color;
  final Widget? cardChildWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChildWidget,

      margin: EdgeInsets.all(15),
      decoration:
      BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),

    );
  }
}