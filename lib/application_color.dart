import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ApplicationColor with ChangeNotifier {
  bool _isRed = true;

  bool get isRed => _isRed;
  set isRed(bool value) {
    _isRed = value;
    notifyListeners();
  }

  Color get color => (isRed) ? Colors.red : Colors.green;
}
