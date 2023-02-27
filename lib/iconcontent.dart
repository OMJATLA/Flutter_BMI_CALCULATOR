import 'package:flutter/material.dart';
import './constants.dart';

class iconcontent extends StatelessWidget {
  iconcontent({this.text, this.ID});
  final String text;
  final IconData ID;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          ID,
          size: 75,
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          text, // const
          style: klabeltextstyle, //const
        )
      ],
    );
  }
}
