import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
          title: Text("image widget"),
        ),
        body: Center(
          child: Container(
            color: Colors.black,
            width: 200,
            height: 300,
            padding: EdgeInsets.all(3),
            child: Image(
              image: NetworkImage(
                  "https://s4.anilist.co/file/anilistcdn/character/large/b131619-pOu8tYzf1WXl.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
