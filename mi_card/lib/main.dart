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
            padding: const EdgeInsets.symmetric(vertical: 280, horizontal: 80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 200,
                  child: Image(
                    image: AssetImage("images/harry.png"),
                  ),
                ),
                Text(
                  "Harish Vadaparty",
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  "Flutter Developer",
                  style: TextStyle(fontSize: 15),
                ),
                cardWidget("+91 6301786793"),
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
          width: 250,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.phone),
              Text(
                message,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
