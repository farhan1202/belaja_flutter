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
          title: Text("Latihan flexibel widget"),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                        flex: 1,
                        child: Container(
                            margin: EdgeInsets.all(5), color: Colors.black)),
                    Flexible(
                        flex: 1,
                        child: Container(
                            margin: EdgeInsets.all(5), color: Colors.amber)),
                    Flexible(
                        flex: 1,
                        child: Container(
                            margin: EdgeInsets.all(5), color: Colors.green)),
                  ],
                )),
            Flexible(
                flex: 2,
                child:
                    Container(margin: EdgeInsets.all(5), color: Colors.blue)),
            Flexible(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.yellow,
                )),
          ],
        ),
      ),
    );
  }
}
