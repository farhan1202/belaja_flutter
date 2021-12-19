import 'package:flutter/material.dart';
import 'package:flutter_application/bloc/ColorBloc.dart';
import 'package:flutter_application/bloc/CounterBloc.dart';
import 'package:flutter_application/ui/DraftPage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorBloc colorBloc = BlocProvider.of<ColorBloc>(context);
    CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
    return BlocBuilder<ColorBloc, Color>(
      builder: (context, color) => DraftPage(
        backgroundColor: color,
        body: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder<CounterBloc, int>(
              builder: (context, state) => GestureDetector(
                onTap: () {
                  counterBloc.add(state + 1);
                },
                child: Text(
                  state.toString(),
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                RaisedButton(
                  onPressed: () {
                    colorBloc.add(ColorEvent.toPink);
                  },
                  color: Colors.pink,
                  shape: (color == Colors.pink)
                      ? CircleBorder(
                          side: BorderSide(color: Colors.black, width: 3),
                        )
                      : CircleBorder(),
                ),
                RaisedButton(
                    onPressed: () {
                      colorBloc.add(ColorEvent.toAmber);
                    },
                    color: Colors.amber,
                    shape: (color == Colors.amber)
                        ? CircleBorder(
                            side: BorderSide(color: Colors.black, width: 3),
                          )
                        : CircleBorder()),
                RaisedButton(
                  onPressed: () {
                    colorBloc.add(ColorEvent.toPurple);
                  },
                  color: Colors.purple,
                  shape: (color == Colors.purple)
                      ? CircleBorder(
                          side: BorderSide(color: Colors.black, width: 3),
                        )
                      : CircleBorder(),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
