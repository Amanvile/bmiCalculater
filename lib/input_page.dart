import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi/reusable_card.dart';
import 'gender_widget.dart';
import 'package:bmi/Constants.dart';

enum Gender { Female, Male }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int _currentHeightValue = 150;
  Gender selectedGender = Gender.Male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: reusableCard(
                      onPress: () => {
                        setState(() {
                          selectedGender = Gender.Female;
                        })
                      },
                      cardChildWidget: genderWidget(
                        iconData: FontAwesomeIcons.mars,
                        iconText: 'Male',
                      ),
                      color: selectedGender == Gender.Male
                          ? kActiveCardColor
                          : kInActiveCardColor,
                    ),
                  ),
                  Expanded(
                    child: reusableCard(
                      onPress: () => {
                        setState(() {
                          selectedGender = Gender.Male;
                        })
                      },
                      cardChildWidget: genderWidget(
                        iconData: FontAwesomeIcons.venus,
                        iconText: 'Female',
                      ),
                      color: selectedGender == Gender.Female
                          ? kActiveCardColor
                          : kInActiveCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: reusableCard(
                    color: kActiveCardColor,
                    cardChildWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Height',
                          style: kTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              _currentHeightValue.toString(),
                              style: KNumberStyle,
                            ),
                            Text(
                              "cm",
                              style: kTextStyle,
                            ),
                          ],
                        ),
                        Slider(
                          value: _currentHeightValue.toDouble(),
                          max: 220,
                          min: 120,
                          activeColor: kBottomContainerColor,
                          inactiveColor: Color(0XFF8D8E98),
                          onChanged: (double value) {
                            setState(() {
                              _currentHeightValue = value.round();
                            });
                          },
                        )
                      ],
                    ),
                    onPress: () => {
                      setState(() {
                        // selectedGender = Gender.Male;
                      })
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: reusableCard(
                    color: kActiveCardColor,
                    onPress: () => {
                      setState(() {
                        // selectedGender = Gender.Male;
                      })
                    },
                  ),
                ),
                Expanded(
                  child: reusableCard(
                    color: kActiveCardColor,
                    onPress: () => {
                      setState(() {
                        // selectedGender = Gender.Male;
                      })
                    },
                  ),
                ),
              ],
            ),
            Container(
              height: kBottomContainerHeight,
              width: double.infinity,
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10),
            )
          ],
        ),
      ),
    );
  }
}
