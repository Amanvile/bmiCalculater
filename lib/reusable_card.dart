import 'package:flutter/material.dart';

class reusableCard extends StatelessWidget {
  // const reusableCard({
  //   super.key,
  // });
  reusableCard({super.key, required this.color, this.cardChildWidget,required this.onPress});
  final void Function() onPress;
  final Color color;
  final Widget? cardChildWidget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress ,
      child: Container(
        child: cardChildWidget,
      
        margin: EdgeInsets.all(15),
        decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
      
      ),
    );
  }
}