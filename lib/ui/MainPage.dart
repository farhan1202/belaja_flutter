import 'package:flutter/material.dart';
import 'package:flutter_application/bloc/ColorBloc.dart';
import 'package:flutter_application/bloc/CounterBloc.dart';
import 'package:flutter_application/ui/DraftPage.dart';
import 'package:flutter_application/ui/SecondPage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorBloc, Color>(
      builder: (context, state) => DraftPage(
        backgroundColor: state,
        body: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder<CounterBloc, int>(
              builder: (context, state) => Text(
                state.toString(),
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(),
                    ));
              },
              child: Text(
                "Click to Change",
                style: TextStyle(color: Colors.white),
              ),
              color: state,
              shape: StadiumBorder(),
            )
          ],
        )),
      ),
    );
  }
}
