import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application/bloc/UserBloc.dart';
import 'package:flutter_application/model/User.dart';
import 'package:flutter_application/ui/UserCard.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  Random r = Random();

  @override
  Widget build(BuildContext context) {
    UserBloc bloc = BlocProvider.of<UserBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo MVVM"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RaisedButton(
            textColor: Colors.white,
            color: Colors.blueGrey,
            onPressed: () {
              bloc.add(r.nextInt(10) + 1);
            },
            child: Text("Pick Random Number"),
          ),
          BlocBuilder<UserBloc, User>(
              builder: (context, state) => (state is UninitializedUser)
                  ? Container()
                  : UserCard(
                      user: state,
                    ))
        ],
      ),
    );
  }
}
