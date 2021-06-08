import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final player = AudioCache();
  void playSong(int number) {
    player.play("note$number.wav");
  }

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
                playSong(1);
              },
              child: Container(
                color: Colors.purple,
                height: 50,
              ),
            ),
            GestureDetector(
              onTap: () {
                playSong(2);
              },
              child: Container(
                color: Colors.indigo,
                height: 50,
              ),
            ),
            GestureDetector(
              onTap: () {
                playSong(3);
              },
              child: Container(
                color: Colors.blue,
                height: 50,
              ),
            ),
            GestureDetector(
              onTap: () {
                playSong(4);
              },
              child: Container(
                color: Colors.green,
                height: 50,
              ),
            ),
            GestureDetector(
              onTap: () {
                playSong(5);
              },
              child: Container(
                color: Colors.yellow,
                height: 50,
              ),
            ),
            GestureDetector(
              onTap: () {
                playSong(6);
              },
              child: Container(
                color: Colors.orange,
                height: 50,
              ),
            ),
            GestureDetector(
              onTap: () {
                playSong(7);
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
