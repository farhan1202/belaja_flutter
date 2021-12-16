import 'package:flutter/material.dart';

class ColorfulButton extends StatefulWidget {
  Color mainColor, seconColor;
  IconData iconData;

  @override
  _ColorfulButtonState createState() =>
      _ColorfulButtonState(mainColor, seconColor, iconData);

  ColorfulButton(this.mainColor, this.seconColor, this.iconData);
}

class _ColorfulButtonState extends State<ColorfulButton> {
  bool isPress = false;
  Color mainColor, seconColor;
  IconData iconData;

  _ColorfulButtonState(this.mainColor, this.seconColor, this.iconData);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          isPress = !isPress;
        });
      },
      onTapUp: (details) {
        setState(() {
          isPress = !isPress;
        });
      },
      onTapCancel: () {
        setState(() {
          isPress = !isPress;
        });
      },
      child: Material(
        borderRadius: BorderRadius.circular(15),
        elevation: 10,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: Material(
                  borderRadius: BorderRadius.circular(15),
                  child: Icon(
                    iconData,
                    color: Colors.white.withOpacity(0.5),
                  ),
                  color: (isPress) ? seconColor : mainColor,
                ),
              ),
              Transform.translate(
                offset: Offset(30, 30),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(-30, 30),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(30, -30),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(-30, -30),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
