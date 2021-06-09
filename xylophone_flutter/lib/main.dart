import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final player = AudioCache();
  void playSong(int number) {
    player.play("note$number.wav");
  }

  Expanded buildKey({required MaterialColor color, required int soundNumber}) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          playSong(soundNumber);
        },
        child: Container(
          color: color,
        ),
      ),
    );
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
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(color: Colors.purple, soundNumber: 1),
            buildKey(color: Colors.indigo, soundNumber: 2),
            buildKey(color: Colors.blue, soundNumber: 3),
            buildKey(color: Colors.green, soundNumber: 4),
            buildKey(color: Colors.yellow, soundNumber: 5),
            buildKey(color: Colors.orange, soundNumber: 6),
            buildKey(color: Colors.red, soundNumber: 7),
          ],
        ),
      )),
    );
  }
}
