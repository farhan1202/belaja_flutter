import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application/Colorful_button.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("featured font"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "contoh text 1",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "contoh text 2 small caps",
                style: TextStyle(
                    fontSize: 20, fontFeatures: [FontFeature.enable("smcp")]),
              ),
              Text(
                "contoh text 1/2 small caps & frag",
                style: TextStyle(fontSize: 20, fontFeatures: [
                  FontFeature.enable("smcp"),
                  FontFeature.enable("frac")
                ]),
              ),
              Text(
                "contoh cardo  tanpa apapun",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Cardo",
                ),
              ),
              Text(
                "contoh text 1/2 small caps & frag",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Cardo",
                    fontFeatures: [FontFeature.oldstyleFigures()]),
              ),
              Text(
                "Milonga regular",
                style: TextStyle(fontSize: 20, fontFamily: "Milonga"),
              ),
              Text(
                "Milonga regular styl set 5",
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: "Cardo",
                    fontFeatures: [FontFeature.stylisticSet(15)]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
