import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController(text: "");
  bool sOne = false;

  void saveData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("nama", controller.text);
    pref.setBool("switch", sOne);
  }

  Future<String> getNama() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString("nama") ?? "No Name";
  }

  Future<bool> getSwitch() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool("switch") ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("shared preferend"),
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  controller: controller,
                ),
                Switch(
                  value: sOne,
                  onChanged: (value) {
                    setState(() {
                      sOne = value;
                    });
                  },
                ),
                RaisedButton(
                  onPressed: () {
                    saveData();
                  },
                  child: Text("Save"),
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      getNama().then((value) {
                        controller.text = value;
                      });
                      getSwitch().then((value) {
                        sOne = value;
                      });
                    });
                  },
                  child: Text("Load"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
