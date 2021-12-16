import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TabBar myBar = TabBar(
        indicator: BoxDecoration(
            color: Colors.blueGrey,
            border: Border(bottom: BorderSide(color: Colors.black))),
        tabs: [
          Tab(
            icon: Icon(Icons.comment),
            text: "Comment",
          ),
          Tab(
            icon: Icon(Icons.lock),
          )
        ]);
    return MaterialApp(
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: Text("contohb bar"),
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(myBar.preferredSize.height),
                  child: Container(
                    child: myBar,
                    color: Colors.red,
                  )),
            ),
            body: TabBarView(
              children: [
                Center(
                  child: Text("ini tab 1"),
                ),
                Center(
                  child: Text("ini tab 2"),
                ),
              ],
            ),
          )),
    );
  }
}
