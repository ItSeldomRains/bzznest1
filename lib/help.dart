import 'package:flutter/material.dart';

class HelpRoute extends StatelessWidget {
  final AppBarColor = const Color(0xffCA9A45);
  final ScaffoldColor = const Color(0xffe3c981);
  final SectionsColor = const Color(0xffd9bf79);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Help?"),
        backgroundColor: AppBarColor,
      ),
      body: Container(
        child: Container(
          color: ScaffoldColor,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(30),
                margin: EdgeInsets.all(15),
                color: SectionsColor,
                child: Column(children: [
                  Container(
                    child: Text("Frequently Asked Questions:\n",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Text("How do I avail a vendor’s product or service?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                        "           Contact them by pressing ✆ next to their post\n",
                        style: TextStyle(fontSize: 15)),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Text("Can I sell my own products or services?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: Text(
                          "          Yes. You can do so by posting your product in the marketplace.",
                          style: TextStyle(fontSize: 15)))
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
