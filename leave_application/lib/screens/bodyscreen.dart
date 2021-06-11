import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:leave_application/constants.dart';
import 'package:leave_application/models/user.dart';
import 'package:leave_application/screens/apply_screen.dart';
import 'package:leave_application/widgets/card_widget.dart';

class BodyScreen extends StatelessWidget {
  const BodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(size);
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Stack(
              children: [
                Container(
                  height: size.height * 0.35,
                  width: size.width,
                  color: blue,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 110, left: 20),
                        child: Text(
                          "Good Morning,${User().name}",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15, left: 20),
                        child: Text(
                          "Leave Dashboard",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "4 Leaves",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "12 Leaves",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                        child: LinearProgressIndicator(
                          value: 40,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                icon: Image.asset("assets/icon1.png"),
                onPressed: () {},
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              centerTitle: false,
              actions: [
                IconButton(
                  icon: Icon(Icons.notifications),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: size.height * 0.27,
            height: size.height * 0.65,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20),
                      child: Text(
                        "Yesterday",
                        style: TextStyle(),
                      ),
                    ),
                    CardWidget(color: Colors.orange, status: User().status1),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20),
                      child: Text(
                        "22 Aug 2019",
                        style: TextStyle(),
                      ),
                    ),
                    CardWidget(color: Colors.red, status: User().status3),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20),
                      child: Text(
                        "21 Aug 2019",
                        style: TextStyle(),
                      ),
                    ),
                    CardWidget(color: Colors.red, status: User().status2),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20),
                      child: Text(
                        "20 Aug 2019",
                        style: TextStyle(),
                      ),
                    ),
                    CardWidget(color: Colors.green, status: User().status1),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: size.height * 0.9,
            child: Align(
                alignment: Alignment.center,
                child: FloatingActionButton.extended(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ApplyScreen(),
                      ),
                    );
                  },
                  label: Text("Apply for Leave"),
                )),
          ),
        ],
      ),
    );
  }
}
