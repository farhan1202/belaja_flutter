import 'package:flutter/material.dart';
import 'package:flutter_application/colorBloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:
            BlocProvider(create: (context) => ColorBloc(), child: HomePage()));
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorBloc bloc = BlocProvider.of<ColorBloc>(context);
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              bloc.add(ColorEvent.toAmber);
            },
            backgroundColor: Colors.amber,
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              bloc.add(ColorEvent.toLightBlue);
            },
            backgroundColor: Colors.lightBlue,
          )
        ],
      ),
      appBar: AppBar(
        title: Text("Bloc dengan pluggin"),
      ),
      body: Center(
        child: BlocBuilder<ColorBloc, Color>(
          builder: (context, state) => AnimatedContainer(
            duration: Duration(milliseconds: 500),
            color: state,
            width: 150,
            height: 150,
          ),
        ),
      ),
    );
  }
}
