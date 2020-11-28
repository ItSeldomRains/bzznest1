import 'package:flutter/material.dart';

class AboutRoute extends StatelessWidget {
  final AppBarColor = const Color(0xffCA9A45);
  final ScaffoldColor = const Color(0xffe3c981);
  final SectionsColor = const Color(0xffdedcca);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
        backgroundColor: AppBarColor,
      ),
      body: Container(
        child: Container(
          color: ScaffoldColor,
          width: double.infinity,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Image.asset(
                        'assets/logo.png',
                        height: 275,
                      ),
                    ),
                    SizedBox(
                      child: Text("BzzNext\n",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                          "           BzzNest is a mobile application that aims to empower starting local businesses and services online. In the new normal, it is undeniable that the number of local businesses and services grows rapidly. This mobile platform aids for boosting local influence in the market and helps create healthy community relationships among local vendors and consumers.\n",
                          style: TextStyle(fontSize: 15, height: 1.5)),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Support Local.\nSupport our Community.",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        "\n\n\n\nCopyright © 2020 Start Up Mobile Solutions, Inc.\nAll Rights Reserved.",
                        style: TextStyle(fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
