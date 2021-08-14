
import 'dart:math';

class CalculatorBrain {

  CalculatorBrain(this.height, this.weight);

  final int height;
  final int weight;

  double _bmi=0.0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25)
      return 'Overweight';
    else if (_bmi > 18.5)
      return 'normal';

    else
      return 'Underweight';
  }


  String getInterpretation () {


    if (_bmi >= 25)
      return 'Your BMI result is quite high, you should exercice more!';
    else if (_bmi > 18.5)
      return 'Your BMI result is normal, Good job!';

    else
      return 'Your BMI result is quite low, you should eat more!';


  }

}
