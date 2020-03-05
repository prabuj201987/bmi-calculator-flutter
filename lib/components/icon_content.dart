import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.iconText, @required this.iconData});

  final String iconText;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          iconText,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
