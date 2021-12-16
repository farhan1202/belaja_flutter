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
          title: Text("Colorful Button"),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ColorfulButton(Colors.pink, Colors.blue, Icons.adb),
              ColorfulButton(Colors.blue, Colors.red, Icons.person),
              ColorfulButton(Colors.red, Colors.green, Icons.book)
            ],
          ),
        ),
      ),
    );
  }
}
