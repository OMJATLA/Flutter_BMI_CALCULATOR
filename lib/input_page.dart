// import 'dart:html';

import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconcontent.dart';
import './reusable_card.dart';
import './constants.dart';
import './roundButton.dart';
import './calculator_brain.dart';

enum Gendertype { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool bottomOnOff = false;
  Gendertype selectedGender;
  int height = 180;
  int weight = 30;
  int age = 15;

  // Color malecardcolor = inactivecolor;
  // Color femalecardcolor = inactivecolor;

  // void updateColor(Gendertype selectedGender) {
  //   if (selectedGender == Gendertype.male) {
  //     if (malecardcolor == inactivecolor) {
  //       malecardcolor = activeCardColor;
  //       femalecardcolor = inactivecolor;
  //     }
  //   } else {
  //     malecardcolor = inactivecolor;
  //   }

  //   if (selectedGender == Gendertype.female) {
  //     if (femalecardcolor == inactivecolor) {
  //       femalecardcolor = activeCardColor;
  //       malecardcolor = inactivecolor;
  //     }
  //   } else {
  //     femalecardcolor = inactivecolor;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Please! Tap on the Gender",
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: resuablecard(
                    colour: selectedGender == Gendertype.male //ternary
                        ? kActiveCardColor1 //if true
                        : kinactivecolor, // if false
                    cardChild:
                        iconcontent(text: 'MALE', ID: FontAwesomeIcons.mars),
                    onPress: () {
                      setState(() {
                        if (kActiveCardColor1 == Color(0xff1D1E33)) {
                          selectedGender = Gendertype.male;
                          kActiveCardColor1 = kActiveCardColorMale;
                          kActiveCardColor3 = kActiveCardColorMale;
                          kbottomcolor = kActiveCardColorMale;
                          bottomOnOff = true;
                        } else {
                          kActiveCardColor1 = kinactivecolor;
                          kActiveCardColor3 = Colors.grey;
                          kbottomcolor = kinactivecolor;
                          bottomOnOff = false;
                        }
                      });
                    },
                  ),
                ),
                Expanded(
                  child: resuablecard(
                    colour: selectedGender == Gendertype.female
                        ? kActiveCardColor2
                        : kinactivecolor,
                    cardChild:
                        iconcontent(text: 'FEMALE', ID: FontAwesomeIcons.venus),
                    onPress: () {
                      setState(() {
                        if (kActiveCardColor2 == Color(0xff1D1E33)) {
                          selectedGender = Gendertype.female;
                          kActiveCardColor2 = kActiveCardColorFemale;
                          kActiveCardColor3 = kActiveCardColorFemale;
                          kActiveCardColor1 = kActiveCardColorFemale;
                          kbottomcolor = kActiveCardColorFemale;
                          bottomOnOff = true;
                        } else {
                          kActiveCardColor2 = kinactivecolor;
                          kActiveCardColor3 = Colors.grey;
                          kActiveCardColor1 = kinactivecolor;
                          kbottomcolor = kinactivecolor;
                          bottomOnOff = false;
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: resuablecard(
              colour: kActiveCardColor, // on the taping of male female button
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Height",
                    style: klabeltextstyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberStyle,
                      ),
                      Text(
                        "cm",
                        style: klabeltextstyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        // thumbColor: Color(0xffEA1556),
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xff888997),
                        overlayColor: Color(0x29EA1556)),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        // activeColor: Color(0xffEA1556),
                        activeColor: kActiveCardColor3,
                        onChanged: (double om) {
                          setState(() {
                            height = om.round();
                          });
                        }),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: resuablecard(
                  colour: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: klabeltextstyle,
                      ),
                      Text(
                        weight.toString(),
                        style: kNumberStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          roundButton(
                            icon: FontAwesomeIcons.minus,
                            onpressRoundButton: () {
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          roundButton(
                            icon: FontAwesomeIcons.plus,
                            onpressRoundButton: () {
                              setState(() {
                                weight++;
                              });
                            },
                          )
                        ],
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: resuablecard(
                  colour: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: klabeltextstyle,
                      ),
                      Text(
                        age.toString(),
                        style: kNumberStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          roundButton(
                            icon: FontAwesomeIcons.minus,
                            onpressRoundButton: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          roundButton(
                            icon: FontAwesomeIcons.plus,
                            onpressRoundButton: () {
                              setState(() {
                                age++;
                              });
                            },
                          )
                        ],
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
          BottomButton(
            buttonTile: 'CALCULATE',
            ontap: () {
              if (bottomOnOff == true) {
                CalculatorBrain calc =
                    CalculatorBrain(height: height, weight: weight);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => results_page(
                      bmiResult: calc.calculateBMI(),
                      resultText: calc.getResult(),
                      interpretation: calc.getInterpretation(),
                    ),
                  ),
                );
              } else {
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    backgroundColor: Color(0xff1D1E33),
                    title: const Text(
                      "Attention!",
                      style: TextStyle(color: Colors.red),
                    ),
                    content: const Text(
                        "Please Select the Gender to Calculate your BMI"),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(ctx).pop();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(14),
                          child: const Text("okay"),
                        ),
                      ),
                    ],
                  ),
                );
              }
            },
          )
        ],
      ),
    );
  }
}

class BottomButton extends StatelessWidget {
  BottomButton({this.buttonTile, this.ontap});

  final String buttonTile;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Center(
          child: Text(
            buttonTile,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        margin: EdgeInsets.only(top: 10),
        color: kbottomcolor,
        width: double.infinity,
        height: 80,
      ),
    );
  }
}
