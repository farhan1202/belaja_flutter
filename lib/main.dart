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
          title: Text("Stack and Align widget"),
        ),
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(flex: 1, child: Container()),
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.grey,
                            )),
                      ],
                    )),
                Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(flex: 1, child: Container(color: Colors.grey)),
                        Flexible(flex: 1, child: Container()),
                      ],
                    ))
              ],
            ),
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(15),
                      child: Text(
                        "ini adalah text yang ada di lapisan ke 2",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      child: Text(
                        "ini adalah text yang ada di lapisan ke 2",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      child: Text(
                        "ini adalah text yang ada di lapisan ke 2",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      child: Text(
                        "ini adalah text yang ada di lapisan ke 2",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      child: Text(
                        "ini adalah text yang ada di lapisan ke 2",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      child: Text(
                        "ini adalah text yang ada di lapisan ke 2",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      child: Text(
                        "ini adalah text yang ada di lapisan ke 2",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      child: Text(
                        "ini adalah text yang ada di lapisan ke 2",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      child: Text(
                        "ini adalah text yang ada di lapisan ke 2",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      child: Text(
                        "ini adalah text yang ada di lapisan ke 2",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: RaisedButton(
                onPressed: null,
                child: Text("Button"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
