import 'package:flutter/material.dart';

class CustomProgressBar extends StatelessWidget {
  final double width;
  final int value;
  final int totalValue;
  double ration;
  CustomProgressBar({this.width, this.value, this.totalValue});
  @override
  Widget build(BuildContext context) {
    ration = value / totalValue;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              width: width,
              height: 10,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(5)),
            ),
            Material(
              borderRadius: BorderRadius.circular(5),
              elevation: 3,
              child: AnimatedContainer(
                height: 10,
                width: width * ration,
                duration: Duration(milliseconds: 500),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: (ration < 0.3)
                        ? Colors.red
                        : (ration < 0.6)
                            ? Colors.yellow
                            : Colors.lightGreen),
              ),
            )
          ],
        )
      ],
    );
  }
}

class BarState with ChangeNotifier {
  int _bar = 10;

  int get bar => _bar;
  set bar(int newBar) {
    _bar = newBar;
    notifyListeners();
  }
}
