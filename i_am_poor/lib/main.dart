import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.pink[300],
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Center(child: Text("I am Poor")),
      ),
      body: Center(
        child: Image(
          image: AssetImage("images/stone.png"),
        ),
      ),
    ),
  ));
}
