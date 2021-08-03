import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/reusable_iconbutton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const botttomcontainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomcontainerColor = Color(0xFFEB1555);
enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  Gender selectedGender;

  // void updateColor(Gender gender) {
  //   if (gender == Gender.male) {
  //     if (maleCardColor == inactiveCardColor) {
  //       maleCardColor = activeCardColor;
  //       femaleCardColor = inactiveCardColor;
  //     } else {
  //       maleCardColor = inactiveCardColor;
  //       // femaleCardColor = activeCardColor;
  //     }
  //   }
  //   if (gender == Gender.female) {
  //     if (femaleCardColor == inactiveCardColor) {
  //       femaleCardColor = activeCardColor;
  //       maleCardColor = inactiveCardColor;
  //     } else {
  //       femaleCardColor = inactiveCardColor;
  //       //maleCardColor = activeCardColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        // updateColor(Gender.male);
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReuseableCard(
                      colour: selectedGender == Gender.male
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: ReusabaleIconButton(
                        icon: FontAwesomeIcons.mars,
                        text: "MALE",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        // updateColor(Gender.female);
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReuseableCard(
                      colour: selectedGender == Gender.female
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: ReusabaleIconButton(
                        icon: FontAwesomeIcons.venus,
                        text: "FEMALE",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ReuseableCard(
            colour: activeCardColor,
          ),
          Expanded(
            child: Row(
              children: [
                ReuseableCard(colour: activeCardColor),
                ReuseableCard(
                  colour: activeCardColor,
                ),
              ],
            ),
          ),
          Container(
            color: bottomcontainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: botttomcontainerHeight,
          )
        ],
      ),
    );
  }
}
