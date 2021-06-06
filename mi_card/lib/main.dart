import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.green[400],
        body: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 250, horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  foregroundImage: AssetImage("images/harry.png"),
                  foregroundColor: Colors.blue,
                  radius: 100,
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    "Harish Vadaparty",
                    style: TextStyle(fontSize: 30, fontFamily: "Roboto"),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Center(
                  child: Text(
                    "Flutter Developer",
                    style: TextStyle(fontSize: 20, fontFamily: "Chelesa"),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                cardWidget("+91 6301786793"),
                SizedBox(
                  height: 10,
                ),
                cardWidget("harishvadaparty@gmail.com"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Card cardWidget(String message) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        child: Container(
          width: 650,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.phone),
              SizedBox(
                width: 10,
              ),
              Text(
                message,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
