import 'package:flutter/material.dart';
import 'package:animated_button/animated_button.dart';
import 'business.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    height: 100,
                    color: Colors.black,
                    child: Row(
                      children: [
                        SizedBox(width: 65),
                        Container(
                            child: Image.asset("assets/header.png"),
                            height: 80,
                            width: 300)
                      ],
                    ),
                  ),
                  // HERE ---------------------------------------------------------

                  SizedBox(height: 40),
                  Stack(
                    children: [
                      new Container(
                          width: 200,
                          height: 150,
                          margin: EdgeInsets.all(100.0),
                          decoration: new BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3)),
                              ],
                              color: Colors.grey,
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/face.jpg')))),
                      Positioned(
                        top: 50,
                        left: 150,
                        child: Container(
                            child: Center(
                                child: Text("Jerry F.",
                                    style: TextStyle(fontSize: 30)))),
                      ),
                      Positioned(
                          bottom: 70,
                          left: 155,
                          child: Text("User ID: 0001",
                              style: TextStyle(
                                  color: Colors.grey.withOpacity(0.6)))),
                      Positioned(
                          bottom: 0,
                          right: 30,
                          child: Container(
                              width: 50,
                              height: 50,
                              child: Center(child: Icon(Icons.add_a_photo)),
                              margin: EdgeInsets.all(100.0),
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0, 3)),
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)))),
                    ],
                  ),

                  SizedBox(height: 1),
                  Container(
                      child: Column(children: [
                    Container(
                      height: 100,
                      width: 380,
                      child: Center(
                          child: Text("Tell us something about yourself",
                              style: TextStyle(
                                  color: Colors.grey.withOpacity(0.3),
                                  fontSize: 20))),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    AnimatedButton(
                      height: 70,
                      width: 160,
                      color: Colors.black,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BusinessPage()));
                      },
                      child: Center(
                        child: Text("Create Business",
                            style: TextStyle(color: Colors.white)),
                      ),
                    )
                  ]))
                ],
              )
            ],
          )),
    );
  }
}
