import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi/reusable_card.dart';
import 'gender_widget.dart';
const bottomContainerHeight = 80.0;

const bottomContainerColor = 0XFFEB1555;

const activeCardColor = 0xFF1D1E33;

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: reusableCard(
                      cardChildWidget: genderWidget(iconData:FontAwesomeIcons.mars,iconText: 'male',),
                      color: Color(activeCardColor),
                    ),
                  ),
                  Expanded(
                    child: reusableCard(
                      cardChildWidget: genderWidget(iconData:FontAwesomeIcons.venus,iconText: 'Female',),
                      color: Color(activeCardColor),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: reusableCard(
                    color: Color(activeCardColor),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: reusableCard(
                    color: Color(activeCardColor),
                  ),
                ),
                Expanded(
                  child: reusableCard(
                    color: Color(activeCardColor),
                  ),
                ),
              ],
            ),
            Container(
              height: bottomContainerHeight,
              width: double.infinity,
              color: Color(bottomContainerColor),
              margin: EdgeInsets.only(top: 10),
            )
          ],
        ),
      ),
    );
  }
}




