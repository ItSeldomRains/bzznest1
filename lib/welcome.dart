import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:project_1/home.dart';
import 'main.dart';

class WelcomePage extends StatelessWidget {
  final String name;
  WelcomePage({Key key, @required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          height: 170,
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Text("Welcome to the nest,",
                  style: TextStyle(fontSize: 35)))),
      SizedBox(height: 20),
      Text(name, style: TextStyle(fontSize: 60)),
      SizedBox(height: 200),
      AnimatedButton(
          width: 100,
          height: 35,
          color: Colors.black,
          onPressed: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: Container(
              child: Text("Continue", style: TextStyle(color: Colors.white))))
    ])));
  }
}
