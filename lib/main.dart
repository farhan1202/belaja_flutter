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
          title: Text("text style"),
        ),
        body: Center(
          child: Text(
            "ini adalah contoh text ",
            style: TextStyle(
                fontFamily: "Freescpt",
                fontSize: 30,
                decoration: TextDecoration.underline),
          ),
        ),
      ),
    );
  }
}
