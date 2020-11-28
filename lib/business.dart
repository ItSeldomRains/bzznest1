import 'package:flutter/material.dart';
import 'package:animated_button/animated_button.dart';
import 'business.dart';

class BusinessPage extends StatefulWidget {
  @override
  BusinessState createState() => BusinessState();
}

class BusinessState extends State<BusinessPage> {
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

                  Container(
                    height: 50,
                    width: 380,
                    child: Center(
                        child: Text("Business Name",
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
                  SizedBox(height: 10),
                  Container(
                      child: Column(children: [
                    Container(
                      height: 50,
                      width: 380,
                      child: Center(
                          child: Text("Business Description",
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
                    SizedBox(height: 10),
                    Container(
                      height: 50,
                      width: 380,
                      child: Center(
                          child: Text("Location",
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
                    SizedBox(height: 10),
                    Container(
                      height: 50,
                      width: 380,
                      child: Center(
                          child: Text("Contact",
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
                    Container(
                        width: 200,
                        height: 150,
                        margin: EdgeInsets.all(100.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.upload_file),
                              Text("Upload")
                            ]),
                        decoration: new BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3)),
                          ],
                          color: Colors.white,
                          shape: BoxShape.circle,
                        )),
                    SizedBox(height: 10),
                    AnimatedButton(
                      height: 70,
                      width: 160,
                      color: Colors.black,
                      onPressed: () {},
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
