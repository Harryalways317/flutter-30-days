import 'package:flutter/material.dart';
import 'package:leave_application/models/user.dart';

class CardContent extends StatelessWidget {
  final userStatus;
  final MaterialColor color;

  const CardContent({Key? key, required this.userStatus, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double heightText = 25;
    double iconSep = 8;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Image.asset("assets/icon2.png"),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: iconSep,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Applied Duration",
                          style: TextStyle(fontSize: 13, color: Colors.black)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(User().duration,
                          style: TextStyle(fontSize: 16, color: Colors.black))
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: heightText,
              ),
              Row(
                children: [
                  IconButton(
                    icon: Image.asset("assets/icon3.png"),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: iconSep,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Reason",
                          style: TextStyle(fontSize: 13, color: Colors.black)),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Having fever from last night",
                          style: TextStyle(fontSize: 16, color: Colors.black))
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: heightText,
              ),
              Row(
                children: [
                  IconButton(
                    icon: Image.asset("assets/icon4.png"),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: iconSep,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Type of Leave",
                          style: TextStyle(fontSize: 13, color: Colors.black)),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Sick Leave",
                          style: TextStyle(fontSize: 16, color: Colors.black))
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        _buildTag(context, userStatus, color)
      ],
    );
  }

  Widget _buildTag(context, String userStatus, MaterialColor color) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        ),
      ),
      child: Text(userStatus),
    );
  }
}
