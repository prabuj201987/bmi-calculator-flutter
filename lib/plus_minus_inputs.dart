import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'round_button_icon.dart';

class PlusMinusInputs extends StatelessWidget {
  PlusMinusInputs({@required this.input, @required this.onPressed, this.label});

  final int input;
  final String label;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          label,
          style: kLabelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              input.toString(),
              style: kNumberTextStyle,
            ),
            Text(
              'kg',
              style: kLabelTextStyle,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundButtonIcon(
              icon: FontAwesomeIcons.minus,
              onPressed: () {
                onPressed(1);
              },
            ),
            SizedBox(
              width: 10.0,
            ),
            RoundButtonIcon(
              icon: FontAwesomeIcons.plus,
              onPressed: () {
                onPressed(2);
              },
            ),
          ],
        )
      ],
    );
  }
}
