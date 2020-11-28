import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  @override
  MessageBoxPop createState() => MessageBoxPop();
}

class MessageBoxPop extends State<MessagePage> {
  final AppBarColor = const Color(0xffCA9A45);
  final ScaffoldColor = const Color(0xfff2f1e6);
  final SectionsColor = const Color(0xffdedcca);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        backgroundColor: AppBarColor,
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.grey[100],
            border: Border.all(color: Colors.grey[400])),
        width: double.infinity,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.amber[100],
                  border: Border.all(color: Color(0xffa89254))),
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 70,
              child: Row(children: [
                Image.asset(
                  'assets/p2.jpg',
                  height: 50,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("VP Art Commissions",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17))),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Arts and Crafts",
                        style: TextStyle(color: Colors.grey[700], fontSize: 13),
                        textAlign: TextAlign.left,
                      ),
                    )
                  ]),
                )
              ]),
            ),
            Container(
                decoration: BoxDecoration(
                    color: Colors.grey[350],
                    border: Border.all(color: Colors.grey[400])),
                padding: EdgeInsets.all(10),
                width: double.infinity,
                height: 100,
                child: Column(
                  children: [
                    Row(children: [
                      Icon(Icons.mobile_screen_share, color: Colors.grey[700]),
                      Text(
                        "  +63 942 865 3000",
                        style: TextStyle(color: Colors.grey[700]),
                      )
                    ]),
                    Row(children: [
                      Icon(Icons.alternate_email, color: Colors.grey[700]),
                      Text(
                        "  theonlyvp@gmail.com",
                        style: TextStyle(color: Colors.grey[700]),
                      )
                    ]),
                    Row(children: [
                      Icon(
                        Icons.add_location,
                        color: Colors.grey[700],
                      ),
                      Text(
                        "  Brgy. Lantic, Carmona, Cavite, CALABARZON",
                        style: TextStyle(color: Colors.grey[700]),
                      )
                    ])
                  ],
                )),
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff966023),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 3,
                              )
                            ],
                          ),
                          child: Text("Pwede po magpa-drawing? \nMagkano po?",
                              style: TextStyle(color: Color(0xfff5f5f5)))),
                      Image.asset(
                        'assets/p3.jpg',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/p2.jpg'),
                      Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color(0xffbfbfbf),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 3,
                                )
                              ],
                              border: Border.all(color: Colors.grey[500])),
                          child: Text(
                              "Opo. Yung price ay depende po\nsa medium na gagamitin and\nsa size ng canvas",
                              style: TextStyle(color: Colors.black87))),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff966023),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 3,
                              )
                            ],
                          ),
                          child: Text("Ito po? Magkano po\nkapag ganito?",
                              style: TextStyle(color: Color(0xfff5f5f5)))),
                      Image.asset(
                        'assets/p3.jpg',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          margin: EdgeInsets.all(10),
                          height: 120,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff966023),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 3,
                              )
                            ],
                          ),
                          child: Image.asset('assets/bean_draw.png')),
                      Image.asset(
                        'assets/p3.jpg',
                      ),
                    ],
                  )
                ],
              ),
            ),
            Spacer(),
            Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.amber[100],
                    border: Border.all(color: Color(0xffa89254))),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                        padding: EdgeInsets.all(3),
                        height: 90,
                        width: 300,
                        decoration: BoxDecoration(color: Colors.grey[350]),
                        child: Text("Write something...")),
                    Spacer(),
                    Icon(Icons.send)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
