import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/Icon_content.dart';
import '../components/ReusableCard.dart';
import '../constans.dart';
import 'results_page.dart';
import '../components/bottom_button.dart';
import '../components/round_button.dart';
import 'package:bmi/calculator_brain.dart';

enum gender { male, female, none }


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //Color maleCardColour = inactiveCardColor;
  //Color femaleCardColour = inactiveCardColor;

  gender selectedGender = gender.none;
  int height = 180;
  int weight = 65;
  int age=19;
  //CalculatorBrain calc = CalculatorBrain(height, weight);

  @override
  Widget build(BuildContext context) {
    CalculatorBrain calc = new CalculatorBrain(height,weight);
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = gender.male;
                      });
                    },
                    child: ReusableCard(
                      selectedGender == gender.male
                          ? kActiveCardcolour
                          : kInactiveCardColor,
                      Icon_content(FontAwesomeIcons.mars, 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = gender.female;
                      });
                    },
                    child: ReusableCard(
                      selectedGender == gender.female
                          ? kActiveCardcolour
                          : kInactiveCardColor,
                      Icon_content(FontAwesomeIcons.venus, 'FEMALE'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              kActiveCardcolour,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(height.toString(), style: kNumberTextStyle),
                      Text('cm', style: kLabelTextStyle),
                    ],
                  ),
                  //basic slider :
                  /*  Slider(
                    value: height.toDouble(),
                    onChanged: (double newValue) {

                      setState(() {
                        height=newValue.toInt();
                      });

                    },
                    min: 120.0,
                    max:220.0,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98), */

                  // making our design prettier

                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.toInt();
                        });
                      },
                      min: 120.0,
                      max: 220.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                      kActiveCardcolour,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('WEIGHT', style: kLabelTextStyle,),
                          Text(weight.toString() , style: kNumberTextStyle,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    weight--;

                                  });
                                },
                                child: RoundIconButton(FontAwesomeIcons.minus , () {
                                  weight--;
                                }),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              GestureDetector(
                                onTap:   () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: RoundIconButton(FontAwesomeIcons.plus , () {
                                  weight++;
                                }),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),

                Expanded(
                  child: ReusableCard(
                      kActiveCardcolour,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Age', style: kLabelTextStyle,),
                          Text(age.toString() , style: kNumberTextStyle,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    age--;

                                  });
                                },
                                child: RoundIconButton(FontAwesomeIcons.minus , () {
                                  age--;
                                }),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              GestureDetector(
                                onTap:   () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: RoundIconButton(FontAwesomeIcons.plus , () {
                                  age++;
                                }),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),

          BottomButton(MaterialPageRoute(builder: (context) => ResultsPage(calc.calculateBMI(),calc.getResults(),calc.getInterpretation())),'CALCULATE'),
        ],
      ),
    );
  }
}





