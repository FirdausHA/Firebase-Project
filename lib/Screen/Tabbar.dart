import 'package:flutter/material.dart';
import 'package:project_firebase/Page_Product/Pink_Gold.dart';
import 'package:project_firebase/Page_Product/Platinum.dart';
import 'package:project_firebase/Page_Product/Watch_Gold.dart';
import 'package:project_firebase/Page_Product/White_Gold.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tab inside body widget',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
            Text('Product', textAlign: TextAlign.center, style: const TextStyle(
              fontSize: 50,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: "customFont",
            ),),
            DefaultTabController(
                length: 4, // length of tabs
                initialIndex: 0,
                child: SingleChildScrollView(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
                    Container(
                      child: TabBar(
                        labelColor: Color(0xfff0deba),
                        unselectedLabelColor: Colors.grey,
                        tabs: [
                          Container(
                            width: 30.0,
                            child: Tab(text: 'Gold'),
                          ),
                          Tab(text: 'Pink Gold'),
                          Tab(text: 'White Gold'),
                          Tab(text: 'Platinum'),
                        ],
                      ),
                    ),
                    Container(
                        height: 700, //height of TabBarView

                        child: TabBarView(children: <Widget>[
                          WatchGold(),
                          PinkGold(),
                          WhiteGold(),
                          Platinum(),
                        ])
                    )
                  ]),
                )
            ),
          ]),
        ),
      ),
    );
  }
}