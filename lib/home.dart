import 'package:flutter/material.dart';
import 'package:animated_button/animated_button.dart';

class HomePage extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [DrawerScreen(), HomeScreen()],
    ));
  }
}

class DrawerScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: Column(children: [
          SizedBox(height: 70),
          Container(height: 50),
          Column(children: [
            Row(children: [
              SizedBox(width: 35),
              Column(children: [
                Icon(Icons.person, color: Colors.white),
                SizedBox(height: 10)
              ]),
              AnimatedButton(
                width: 50,
                height: 50,
                color: Colors.transparent,
                onPressed: () {},
                child: Container(
                  child: Text("Profile",
                      style: TextStyle(fontSize: 15, color: Colors.white)),
                ),
              )
            ]),
            Row(children: [
              SizedBox(width: 35),
              Column(children: [
                Icon(Icons.question_answer, color: Colors.white),
                SizedBox(height: 10)
              ]),
              AnimatedButton(
                width: 50,
                height: 50,
                color: Colors.transparent,
                onPressed: () {},
                child: Text("Help",
                    style: TextStyle(fontSize: 15, color: Colors.white)),
              )
            ]),
            Row(children: [
              SizedBox(width: 35),
              Column(children: [
                Icon(Icons.error_outline_outlined, color: Colors.white),
                SizedBox(height: 10)
              ]),
              AnimatedButton(
                width: 50,
                height: 50,
                color: Colors.transparent,
                onPressed: () {},
                child: Text("About",
                    style: TextStyle(fontSize: 15, color: Colors.white)),
              )
            ]),
            SizedBox(height: 510),
            Row(children: [
              SizedBox(width: 25),
              Column(children: [
                Icon(Icons.exit_to_app_outlined, color: Colors.white),
                SizedBox(height: 10)
              ]),
              AnimatedButton(
                width: 70,
                height: 50,
                color: Colors.transparent,
                onPressed: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                  ;
                },
                child: Text("Log out",
                    style: TextStyle(fontSize: 15, color: Colors.white)),
              )
            ])
          ])
        ]));
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  var businessName, businessType, businessPicture, businessLocation;
  bool isDrawerOpen = false;

  var contentEach = [
    {
      "bname": "RamRanch Steaks",
      "btype": "Services and Commissions",
      "picture": "assets/steak.jpg",
      "ppic": "assets/p1.jpg",
      "location": "San Lorenzo, Sta.Rosa",
      "comments": "43",
      "likes": "154"
    },
    {
      "bname": "VP art commissions",
      "btype": "Services an123d Commissions",
      "picture": "assets/pa.jpeg",
      "ppic": "assets/p2.jpg",
      "location": "San Lorenzo, Sta.Rosa",
      "comments": "23",
      "likes": "80"
    },
    {
      "bname": "Lorenzo School Supp.",
      "btype": "Services an123 Commissions",
      "picture": "assets/ss.jpg",
      "ppic": "assets/p3.jpg",
      "location": "San Lorenzo, Sta.Rosa",
      "comments": "51",
      "likes": "92"
    },
    {
      "bname": "Neighbor's cuisine",
      "btype": "Servic123es and Co123mmissions",
      "picture": "assets/bq.jpg",
      "ppic": "assets/p4.jpg",
      "location": "San Lorenzo, Sta.Rosa",
      "comments": "89",
      "likes": "230"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(children: [
          Column(
            children: [
              SizedBox(height: 10),
              Container(
                height: 70,
                color: Colors.black,
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    isDrawerOpen
                        ? IconButton(
                            icon: Icon(Icons.arrow_back_ios),
                            color: Colors.white,
                            onPressed: () {
                              setState(() {
                                xOffset = 0;
                                isDrawerOpen = false;
                              });
                            })
                        : IconButton(
                            icon: Icon(Icons.menu, color: Colors.white),
                            onPressed: () {
                              setState(() {
                                xOffset = 150;
                                isDrawerOpen = true;
                              });
                            }),
                    Container(
                        child: Image.asset("assets/header.png"),
                        height: 100,
                        width: 300)
                  ],
                ),
              )
            ],
          ),
          AnimatedContainer(
            height: 763,
            width: 599,
            transform: Matrix4.translationValues(xOffset, yOffset, 0)
              ..scale(scaleFactor),
            duration: Duration(milliseconds: 250),
            color: Color(0xFF2e2a00),
            child: ListView.builder(
                itemCount: contentEach.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                        width: 100,
                        height: 230,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: Colors.black, spreadRadius: 3),
                          ],
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [0.1, 0.29, 0.3, 1],
                            colors: [
                              Colors.black12,
                              Colors.black12,
                              Colors.white,
                              Colors.white
                            ],
                          ),
                        ),
                        child: Column(children: [
                          SizedBox(height: 10),
                          Row(
                            children: [
                              SizedBox(width: 10),
                              Image.asset(contentEach[index]["ppic"],
                                  height: 40, width: 40),
                              SizedBox(width: 10),
                              Text(contentEach[index]["bname"],
                                  style: TextStyle(color: Colors.white)),
                              SizedBox(width: 10),
                              Text(contentEach[index]["location"],
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10))
                            ],
                          ),
                          SizedBox(height: 20),
                          Image.asset(contentEach[index]["picture"],
                              width: 200, height: 100),
                          SizedBox(height: 15),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.phone),
                                Text("Contact"),
                                SizedBox(width: 170),
                                Icon(Icons.textsms_outlined),
                                Text(contentEach[index]["comments"]),
                                SizedBox(width: 10),
                                Icon(Icons.thumb_up_alt),
                                SizedBox(width: 5),
                                Text(contentEach[index]["likes"])
                              ])
                        ])),
                  );
                }),
          ),
        ]),
        Positioned(
            bottom: 0,
            right: 0,
            child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFF242424),
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(40))),
                height: 200,
                width: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RaisedButton(
                        color: Color(0xFF242424),
                        onPressed: () {},
                        child: Icon(Icons.store, color: Colors.yellow)),
                    RaisedButton(
                        color: Color(0xFF242424),
                        onPressed: () {
                          debugPrint("awerq");
                        },
                        child: Icon(Icons.favorite, color: Colors.white)),
                    RaisedButton(
                        color: Color(0xFF242424),
                        onPressed: () {
                          debugPrint("awerq");
                        },
                        child: Icon(Icons.drafts, color: Colors.white)),
                  ],
                )))
      ],
    );
  }
}
