import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF0A0E21), // Set your desired AppBar color
            foregroundColor: Colors.white, // Color of title and icons
            elevation: 4, // Shadow below the AppBar
          ),


          scaffoldBackgroundColor:Color(0xFF0A0E21),



          // primaryColor:Colors.indigo ,
          // // primaryColor:Color(0xFF0A0E21) ,
          // hintColor:Colors.purple

      ) ,
      home: InputPage(),
    );
  }
}

