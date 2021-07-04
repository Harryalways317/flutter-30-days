import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //use MaterialApp() widget like this
        home: Home() //create new widget class for this 'home' to
        // escape 'No MediaQuery widget found' error
        );
  }
}

//create new class for "home" property of MaterialApp()
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.blue,
      //MediaQuery methods in use
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.9,
    ));
  }
}
