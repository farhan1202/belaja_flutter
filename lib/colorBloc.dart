import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

enum ColorEvent { toAmber, toLightBlue }

class ColorBloc extends Bloc<ColorEvent, Color> {
  Color _color = Colors.red;
  @override
  // TODO: implement initialState
  Color get initialState => Colors.amber;

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    // TODO: implement mapEventToState
    _color = (event == ColorEvent.toAmber) ? Colors.amber : Colors.lightBlue;
    yield _color;
  }
}
