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
          title: Text("Spaces widget"),
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Container(width: 80, height: 80, color: Colors.red),
              Spacer(
                flex: 1,
              ),
              Container(width: 80, height: 80, color: Colors.green),
              Spacer(flex: 1),
              Container(width: 80, height: 80, color: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
