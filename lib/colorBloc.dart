import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

enum ColorEvent { toAmber, toLightBlue }

class ColorBloc extends HydratedBloc<ColorEvent, Color> {
  @override
  // TODO: implement initialState
  Color get initialState => super.initialState ?? Colors.amber;

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    // TODO: implement mapEventToState
    yield (event == ColorEvent.toAmber) ? Colors.amber : Colors.lightBlue;
  }

  @override
  Color fromJson(Map<String, dynamic> json) {
    try {
      return Color(json['color'] as int);
    } catch (e) {
      return null;
    }
  }

  @override
  Map<String, int> toJson(Color state) {
    try {
      return {'color': state.value};
    } catch (e) {
      return null;
    }
  }
}
