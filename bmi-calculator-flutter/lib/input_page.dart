import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const botttomcontainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomcontainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                ReuseableCard(
                  cardChild: Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 80.0,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "MALE",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF8D8E98),
                        ),
                      ),
                    ],
                  ),
                ),
                ReuseableCard(),
              ],
            ),
          ),
          ReuseableCard(),
          Expanded(
            child: Row(
              children: [
                ReuseableCard(colour: activeCardColor),
                ReuseableCard(),
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

class ReuseableCard extends StatelessWidget {
  ReuseableCard({Key key, this.colour, this.cardChild}) : super(key: key);
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: colour,
        ),
        margin: EdgeInsets.all(15),
      ),
    );
  }
}
