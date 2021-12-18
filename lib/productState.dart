import 'package:flutter/foundation.dart';

class ProductState with ChangeNotifier {
  int _quantity = 0;

  int get quantity => _quantity;
  set quantity(int values) {
    _quantity = values;
    notifyListeners();
  }
}
