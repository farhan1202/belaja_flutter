import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgetList = [];

  int number = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View "),
        ),
        body: ListView(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  setState(() {
                    widgetList.add(Text(
                      "data ke " + number.toString(),
                      style: TextStyle(fontSize: 35),
                    ));
                    number++;
                  });
                },
                child: Text(
                  "Tambah",
                ),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    if (number > 1) {
                      widgetList.removeLast();
                      number--;
                    }
                  });
                },
                child: Text("Kurang"),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widgetList,
          )
        ]),
      ),
    );
  }
}
