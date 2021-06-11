import 'package:flutter/material.dart';
import 'package:leave_application/models/user.dart';
import 'package:leave_application/widgets/card_content.dart';

class CardWidget extends StatelessWidget {
  final MaterialColor color;
  final String status;
  const CardWidget({Key? key, required this.color, required this.status})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Stack(children: <Widget>[
        Container(
          child: ClipRRect(
            child: Container(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
          height: MediaQuery.of(context).size.height * 0.25,
          decoration: BoxDecoration(
              color: Color(0xffa29bfe),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.25),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(16)),
        ),
        CardContent(userStatus: status, color: color),
      ]),
    );
  }
}
