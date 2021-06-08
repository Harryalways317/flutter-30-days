import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final player = AudioCache();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GestureDetector(
              onTap: () {
                player.play("note1.wav");
              },
              child: Container(
                color: Colors.purple,
                height: 50,
              ),
            ),
            GestureDetector(
              onTap: () {
                player.play("note2.wav");
              },
              child: Container(
                color: Colors.indigo,
                height: 50,
              ),
            ),
            GestureDetector(
              onTap: () {
                player.play("note3.wav");
              },
              child: Container(
                color: Colors.blue,
                height: 50,
              ),
            ),
            GestureDetector(
              onTap: () {
                player.play("note4.wav");
              },
              child: Container(
                color: Colors.green,
                height: 50,
              ),
            ),
            GestureDetector(
              onTap: () {
                player.play("note5.wav");
              },
              child: Container(
                color: Colors.yellow,
                height: 50,
              ),
            ),
            GestureDetector(
              onTap: () {
                player.play("note6.wav");
              },
              child: Container(
                color: Colors.orange,
                height: 50,
              ),
            ),
            GestureDetector(
              onTap: () {
                player.play("note7.wav");
              },
              child: Container(
                color: Colors.red,
                height: 50,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
