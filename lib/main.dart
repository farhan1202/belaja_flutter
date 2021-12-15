import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              title: Text("contoh tab bar"),
              bottom: TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.comment),
                  text: "Comment",
                ),
                Tab(
                  child: Image(
                      image: NetworkImage(
                          "https://cdn.myanimelist.net/images/characters/7/441094.jpg")),
                ),
                Tab(
                  icon: Icon(Icons.person),
                ),
                Tab(
                  icon: Icon(Icons.lock),
                )
              ]),
            ),
            body: TabBarView(
              children: [
                Center(
                  child: Text("ini tab 1"),
                ),
                Center(
                  child: Text("ini tab 2"),
                ),
                Center(
                  child: Text("ini tab 3"),
                ),
                Center(
                  child: Text("ini tab 4"),
                ),
              ],
            ),
          )),
    );
  }
}
