import 'package:flutter/material.dart';

class ReusabaleIconButton extends StatelessWidget {
  ReusabaleIconButton({Key key, this.icon, this.text}) : super(key: key);
  final IconData icon;
  final String text;

  final labelTextStyle = TextStyle(fontSize: 18, color: Color(0xFF8D8E98));
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
