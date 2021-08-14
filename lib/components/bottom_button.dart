import 'package:flutter/material.dart';
import '../screens/results_page.dart';
import '../constans.dart';
import 'package:bmi/calculator_brain.dart';
import 'package:bmi/screens/Input_page.dart';



class BottomButton extends StatelessWidget {


  BottomButton(this.route, this.buttonTitle);

  //final Function onTap;
  final MaterialPageRoute route;
  final String buttonTitle;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() {

        Navigator.push(context, route);},
      child: Container(
        child: Center(child: Text(buttonTitle , style: kLargeButtonTexetStyle,)),
        color: kBottmonContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottmonContainerHeight,
        padding: EdgeInsets.only(bottom: 20.0),
      ),
    );
  }
}