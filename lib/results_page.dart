import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './input_page.dart';

class results_page extends StatelessWidget {
  String BMIhealthyrange =
      'If your BMI is 18.5 to 24.9, it falls within the Healthy Weight range';

  results_page(
      {@required this.interpretation,
      @required this.bmiResult,
      @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Text(
                "Your Result",
                textAlign: TextAlign.center,
                style: kResultTitlestyle,
              ),
            ),
            Expanded(
              flex: 5,
              child: resuablecard(
                  colour: kActiveCardColor,
                  cardChild: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          resultText.toUpperCase(),
                          style: kIndicatorResult,
                        ),
                        Text(
                          bmiResult,
                          style: kThingstodoResult,
                        ),
                        Text(
                          interpretation,
                          textAlign: TextAlign.center,
                          style: kBMIresult,
                        ),
                        Text(
                          BMIhealthyrange,
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  )),
            ),
            BottomButton(
              buttonTile: 'RE-CALCULATE',
              ontap: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}
