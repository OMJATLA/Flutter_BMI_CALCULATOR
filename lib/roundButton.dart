import 'package:flutter/material.dart';
import './constants.dart';

class roundButton extends StatelessWidget {
  roundButton({this.icon, this.onpressRoundButton});

  final IconData icon;

  final Function onpressRoundButton;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpressRoundButton,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: kinactivecolor,
      child: Icon(icon),
    );
  }
}
