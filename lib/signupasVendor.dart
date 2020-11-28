import 'package:flutter/material.dart';
import 'package:animated_button/animated_button.dart';
import 'package:project_1/entry.dart';
import 'main.dart';
import 'package:project_1/welcome.dart';

class SignupPage2 extends StatefulWidget {
  @override
  SignupState2 createState() => SignupState2();
}

class SignupState2 extends State<SignupPage2> {
  String bname, fname, bday, email, phoneno, _password;
  String dropdownValue = "General Goods";
  final formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      width: 300,
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    width: 260,
                    child: Text("Please fill out the fields below",
                        style: TextStyle(fontSize: 12))),
                SizedBox(height: 5),
                Container(
                    decoration: BoxDecoration(
                      border: Border.fromBorderSide(
                          BorderSide(color: Colors.black45, width: 2.5)),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Business Type: "),
                          DropdownButton<String>(
                            icon: Icon(Icons.arrow_downward),
                            value: dropdownValue,
                            iconSize: 24,
                            elevation: 16,
                            style: TextStyle(color: Colors.black),
                            underline: Container(
                              height: 2,
                              color: Colors.black45,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue = newValue;
                              });
                            },
                            items: <String>[
                              'General Goods',
                              'Food Vendor',
                              'Commision',
                              'Other'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Center(child: Text(value)),
                              );
                            }).toList(),
                          ),
                        ])),
                SizedBox(height: 5),
                TextFormField(
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 20, right: 50),
                        prefixIcon: Icon(Icons.card_travel_outlined),
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(25)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.5),
                            borderRadius: BorderRadius.circular(25)),
                        hintText: "Business Name"),
                    validator: (input) {
                      if (input.isEmpty) {
                        return 'Cannot be empty';
                      }
                      return null;
                    },
                    onSaved: (input) => bname = input),
                TextFormField(
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 20, right: 50),
                        prefixIcon: Icon(Icons.account_circle_outlined),
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(25)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.5),
                            borderRadius: BorderRadius.circular(25)),
                        hintText: "Full Name"),
                    validator: (input) {
                      if (input.isEmpty) {
                        return 'Cannot be empty';
                      }
                      return null;
                    },
                    onSaved: (input) => fname = input),
                SizedBox(height: 5),
                TextFormField(
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 20, right: 50),
                        prefixIcon: Icon(Icons.cake_outlined),
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(25)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.5),
                            borderRadius: BorderRadius.circular(25)),
                        hintText: "Birthday"),
                    validator: (input) {
                      if (input.isEmpty) {
                        return 'Cannot be empty';
                      }
                      return null;
                    },
                    onSaved: (input) => bday = input),
                SizedBox(height: 5),
                TextFormField(
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 20, right: 50),
                        prefixIcon: Icon(Icons.mail_outline),
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(25)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.5),
                            borderRadius: BorderRadius.circular(25)),
                        hintText: "Email"),
                    validator: (input) {
                      if (input.isEmpty) {
                        return 'Cannot be empty';
                      }
                      return null;
                    },
                    onSaved: (input) => email = input),
                SizedBox(height: 5),
                TextFormField(
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 20, right: 50),
                        prefixIcon: Icon(Icons.phone_outlined),
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(25)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.5),
                            borderRadius: BorderRadius.circular(25)),
                        hintText: "Phone Number"),
                    validator: (input) {
                      if (input.isEmpty) {
                        return 'Cannot be empty';
                      }
                      return null;
                    },
                    onSaved: (input) => phoneno = input),
                SizedBox(height: 5),
                TextFormField(
                    style: TextStyle(color: Colors.black),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 20, right: 50),
                        prefixIcon: Icon(Icons.lock_outline),
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(25)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 2.5),
                            borderRadius: BorderRadius.circular(25)),
                        hintText: "Password"),
                    validator: (input) {
                      if (input.isEmpty) {
                        return 'Cannot be empty';
                      }
                      return null;
                    },
                    onSaved: (input) => _password = input),
                SizedBox(height: 50),
                AnimatedButton(
                    width: 150,
                    height: 50,
                    color: Colors.black,
                    onPressed: () {
                      if (formKey.currentState.validate()) {
                        formKey.currentState.save();
                        List<String> _name = fname.split(" ");
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) =>
                                    WelcomePage(name: _name[0])));
                      }
                    },
                    child: Container(
                        width: 100,
                        height: 40,
                        child: Center(
                            child: Text("Sign up",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontFamily: 'Roboto')))))
              ]),
        ),
      ),
    )));
  }
}
