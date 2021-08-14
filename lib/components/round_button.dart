import 'package:flutter/material.dart';
import '../constans.dart';


class RoundIconButton extends StatelessWidget {

  RoundIconButton(this.icon, this.changeValue);
  final IconData icon;
// final Function onPressed;
  final Function changeValue;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,

      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width:56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor:Color(0xFF4C4F5E),
      //onPressed: onPressed(),
      onPressed: changeValue(),





    );
  }
}