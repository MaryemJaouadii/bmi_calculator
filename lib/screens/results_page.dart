import 'package:bmi/constans.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bmi/screens/Input_page.dart';
import '../components/ReusableCard.dart';
import '../components/bottom_button.dart';
import 'package:bmi/calculator_brain.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage(this.bmiResult,this.resultText, this.interpretation);

  final String bmiResult;
  final String resultText;
  final interpretation;

 /* ResultsPage(this.height, this.weight);
  final int height;
  final int weight;*/





  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                  kActiveCardcolour,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        resultText.toUpperCase(),
                        style: kResultTextStyle,
                      ),
                      Text(
                        bmiResult,
                        style: kBMiTextStyle,
                      ),
                      Text(
                        interpretation,
                        style: kBodyTextStyle,
                        textAlign: TextAlign.center,
                      )
                    ],
                  )),
            ),
            Expanded(child:  BottomButton(MaterialPageRoute(builder: (context) => InputPage()),'RE-CALCULATE'),)
          ],
        ));
  }
}
