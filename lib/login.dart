import 'package:flutter/material.dart';
import 'package:animated_button/animated_button.dart';
import 'package:project_1/entry.dart';
import 'main.dart';
import 'package:project_1/home.dart';

class LoginPage extends StatefulWidget {
  @override
  LABState createState() => LABState();
}

class LABState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  String _email, _password;
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.4, 1],
          colors: [const Color(0x21212121), Colors.yellow[700]],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
            child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // LOGO
                Container(
                    width: 300,
                    height: 300,
                    child: Image.asset('assets/logo.png')),
                SizedBox(height: 10),
                Center(
                    child: Form(
                        key: formKey,
                        child: SizedBox(
                          width: 300,
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(children: [
                              Container(
                                width: 250,
                                child: Text("Email / Phone Number",
                                    style: TextStyle(color: Colors.white)),
                              ),
                              TextFormField(
                                  style: TextStyle(color: Colors.black),
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.white, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.yellow[700],
                                              width: 2.5),
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      hintText: "Email / Phone Number"),
                                  validator: (input) {
                                    if (input.isEmpty) {
                                      return "Enter valid email/phone number";
                                    }
                                    return null;
                                  },
                                  onSaved: (input) => _email = input),
                              SizedBox(height: 5),
                              Container(
                                width: 250,
                                child: Text("Password",
                                    style: TextStyle(color: Colors.white)),
                              ),
                              TextFormField(
                                  style: TextStyle(color: Colors.black),
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.white, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.yellow[700],
                                              width: 2.5),
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      hintText: "Password"),
                                  validator: (input) {
                                    if (input.isEmpty) {
                                      return "Invalid password";
                                    }
                                    return null;
                                  },
                                  onSaved: (input) => _password = input,
                                  obscureText: true),
                              SizedBox(height: 15),
                              AnimatedButton(
                                  width: 150,
                                  height: 50,
                                  color: Colors.black,
                                  onPressed: () {
                                    if (formKey.currentState.validate()) {
                                      Navigator.push(
                                          context,
                                          new MaterialPageRoute(
                                              builder: (context) =>
                                                  HomePage()));
                                    }
                                  },
                                  child: Container(
                                      width: 100,
                                      height: 40,
                                      child: Center(
                                          child: Text("Log in",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white,
                                                  fontFamily: 'Roboto'))))),
                              SizedBox(height: 5),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Don't have an account?",
                                        style: TextStyle(fontSize: 14)),
                                    Column(children: [
                                      SizedBox(height: 3.6),
                                      AnimatedButton(
                                          width: 55,
                                          color: Colors.transparent,
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                new MaterialPageRoute(
                                                    builder: (context) =>
                                                        EntryPage()));
                                          },
                                          child: Container(
                                              child: Text("Sign up",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.white,
                                                      fontFamily: 'Roboto'))))
                                    ])
                                  ]),
                              SizedBox(height: 10)
                            ]),
                          ),
                        )))
              ]),
        )),
      ),
    );
  }
}
