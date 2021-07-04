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
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          actions: [
            IconButton(
                onPressed: () {
                  print("Pressed");
                },
                icon: Icon(Icons.camera_alt))
          ],
          title: Text(
            "instagram",
            style: TextStyle(),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CircleAvatar(
              radius: 50,
            ),
            Container(
              color: Colors.blue,
              height: 100,
              width: 100,
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              color: Colors.red,
              height: 100,
              width: 100,
            ),
            Container(
              color: Colors.green,
              height: 100,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}

// Container(
// height: 300,
// width: 300,
// color: Colors.blue,
// child: Container(
// margin: EdgeInsets.only(right: 20, top: 30),
// // padding: EdgeInsets.all(50),
// decoration: BoxDecoration(
// color: Colors.orange,
// borderRadius: BorderRadius.circular(10.0)),
// height: 100,
// width: 100,
// ),

//
// Row(
// children: [
// Container(
// color: Colors.blue,
// height: 100,
// width: 100,
// ),
// Container(
// color: Colors.red,
// height: 100,
// width: 100,
// ),
// Container(
// color: Colors.green,
// height: 100,
// width: 100,
// ),
// ],
// ),
