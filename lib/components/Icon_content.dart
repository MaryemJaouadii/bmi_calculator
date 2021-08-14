import 'package:flutter/material.dart';
import '../constans.dart';



class Icon_content extends StatelessWidget {
  Icon_content(this.icone, this.label);

  final IconData icone;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          icone,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
