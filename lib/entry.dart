import 'package:flutter/material.dart';
import 'package:project_1/signupasBuyer.dart';

import 'package:animated_button/animated_button.dart';
import 'package:project_1/signupasVendor.dart';

class EntryPage extends StatefulWidget {
  @override
  EntryState createState() => EntryState();
}

class EntryState extends State<EntryPage> {
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.7, 1],
          colors: [Colors.white, Colors.yellow[200]],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              // LOGO
              // Container(
              //     width: 200,
              //     height: 200,
              //     child: Image.asset('assets/logo.png')),
              Text("Let's nest you in the right place...",
                  style: TextStyle(fontSize: 20)),
              SizedBox(height: 40),
              Text("Are you a...", style: TextStyle(fontSize: 15)),
              SizedBox(height: 20),
              Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    // I AM A CUSTOMER
                    Container(
                        width: 100,
                        height: 100,
                        child: AnimatedButton(
                            width: 100,
                            height: 60,
                            color: Colors.black,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => SignupPage()));
                            },
                            child: Text("Buyer",
                                style: TextStyle(color: Colors.white)))),

                    SizedBox(height: 20),
                    // I WANT TO SELL
                    Container(
                        child: AnimatedButton(
                            width: 100,
                            height: 60,
                            color: Colors.black,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => SignupPage2()));
                            },
                            child: Text("Vendor",
                                style: TextStyle(color: Colors.white))))
                  ]))
            ])),
      ),
    );
  }
}
