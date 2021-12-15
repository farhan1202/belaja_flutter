import 'package:flutter/material.dart';
import 'package:flutter_application/mainPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: AppBar(
            backgroundColor: Colors.amber,
            flexibleSpace: Stack(children: [
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  margin: EdgeInsets.all(30),
                  child: Positioned(
                    child: Text(
                      "Appbar Racikan",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
