import 'package:flutter/material.dart';
import 'package:flutter_application/application_color.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ChangeNotifierProvider<ApplicationColor>(
      create: (context) => ApplicationColor(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Consumer<ApplicationColor>(
            builder: (context, value, child) => Text(
              "Provider state management",
              style: TextStyle(
                color: value.color,
              ),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<ApplicationColor>(
                builder: (context, value, child) => AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  color: value.color,
                  width: 100,
                  height: 100,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("G"),
                  Consumer<ApplicationColor>(
                    builder: (context, values, child) => Switch(
                      value: values.isRed,
                      activeColor: values.color,
                      onChanged: (value) {
                        values.isRed = value;
                      },
                    ),
                  ),
                  Text("R")
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
