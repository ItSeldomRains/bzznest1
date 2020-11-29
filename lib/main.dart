import 'package:flutter/material.dart';
import 'package:project_1/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  String activename;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginPage());
  }
}
