import 'package:flutter/material.dart';

const textStyle = TextStyle(fontSize: 18,
    color: Color(0xFF8D8E98)) ;
class genderWidget extends StatelessWidget {
  final IconData iconData;
  final String iconText;
  const genderWidget({
    super.key,required this.iconData, required this.iconText
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData,
          size: 80,
        ),
        SizedBox(height: 18),
        Text(iconText,style: textStyle,)
      ],
    );
  }
}