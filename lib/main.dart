import 'package:flutter/material.dart';
import 'package:project_1/login.dart';
import 'entry.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  String activename;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginPage());
  }
}

class NavBar extends StatefulWidget {
  @override
  NavigationBar createState() => NavigationBar();
}

class NavigationBar extends State<NavBar> {
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black.withOpacity(0),
      elevation: 0,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 30),
            Container(
              decoration: new BoxDecoration(
                color: Colors.white,
                boxShadow: [new BoxShadow(blurRadius: 5.0)],
                borderRadius: new BorderRadius.vertical(
                    top: new Radius.elliptical(
                        MediaQuery.of(context).size.width, 70.0)),
              ),
              child: Row(children: [
                SizedBox(width: 30),
                Container(
                    width: 50.0,
                    height: 50.0,
                    child: FlatButton(
                        onPressed: () {
                          debugPrint("Pressed");
                        },
                        child: Image.asset("assets/stack_button.png"))),
                SizedBox(width: 30),
                Container(
                    width: 60.0,
                    height: 60.0,
                    child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        child: Image.asset("assets/home_button.png"))),
                SizedBox(width: 30),
                Container(
                    width: 50.0,
                    height: 50.0,
                    child: FlatButton(
                        onPressed: () {
                          debugPrint("Pressed");
                        },
                        child: Image.asset("assets/next_button.png"))),
                SizedBox(width: 30),
              ]),
            ),
            SizedBox(width: 30)
          ],
        ),
      ),
    );
  }
}
