import 'package:flutter/material.dart';
import 'package:flutter_application/login.dart';

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
          leading: Icon(
            Icons.ac_unit,
            color: Colors.white,
          ),
          title: Text("Appbar Costume"),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
            IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app))
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                  colors: [Color(0xff0096ff), Color(0xff6610f2)]),
              // image: DecorationImage(
              //     image: NetworkImage(
              //         "https://png.pngtree.com/png-clipart/20190515/original/pngtree-beautiful-cube-pattern-png-image_3633077.jpg"),
              //     fit: BoxFit.none,
              //     repeat: ImageRepeat.repeat)
            ),
          ),
        ),
        backgroundColor: Colors.green,
        body: Container(
          margin: EdgeInsets.all(20),
          child: ListView(
            children: <Widget>[
              cardTemplate(Icons.person, "FarHan Hafifi"),
              cardTemplate(Icons.attach_money, "100.000"),
            ],
          ),
        ),
      ),
    );
  }

  Card cardTemplate(IconData iconData, String nama) {
    return Card(
      elevation: 5,
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: Icon(
              iconData,
            ),
          ),
          Text(nama)
        ],
      ),
    );
  }
}
