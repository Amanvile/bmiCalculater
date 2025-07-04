import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi/reusable_card.dart';
import 'gender_widget.dart';
const bottomContainerHeight = 80.0;

const bottomContainerColor = 0XFFEB1555;

const activeCardColor = Color(0xFF1D1E33);
const inActiveCardColor = Color(0XFF111328);

enum Gender {
  Female,
  male
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor=inActiveCardColor;
  Color femaleCardColor=activeCardColor;

  void selectGender(Gender SelectedGender ){
if(SelectedGender ==Gender.Female){
      maleCardColor=activeCardColor;
    femaleCardColor=inActiveCardColor;
  }
  if(SelectedGender ==Gender.male){
  maleCardColor=inActiveCardColor;
  femaleCardColor=activeCardColor;
  }}


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
                    child: GestureDetector(
                      onTap: ()=>{
                        setState(() {
                      selectGender(Gender.male);
                        })


                      },
                      child: reusableCard(
                        cardChildWidget: genderWidget(iconData:FontAwesomeIcons.mars,iconText: 'male',),
                        color: maleCardColor ,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: ()=>{
                        setState(() {
                          selectGender(Gender.Female);
                        })

                      },
                      child: reusableCard(
                        cardChildWidget: genderWidget(iconData:FontAwesomeIcons.venus,iconText: 'Female',),
                        color: femaleCardColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: reusableCard(
                    color: activeCardColor,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: reusableCard(
                    color: activeCardColor,
                  ),
                ),
                Expanded(
                  child: reusableCard(
                    color: activeCardColor,
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




