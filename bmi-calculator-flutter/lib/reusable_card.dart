import 'package:flutter/material.dart';

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
