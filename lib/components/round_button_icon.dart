import 'package:flutter/material.dart';

class RoundButtonIcon extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  RoundButtonIcon({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 40.0,
        height: 40.0,
      ),
      elevation: 0.0,
      child: Icon(icon),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
