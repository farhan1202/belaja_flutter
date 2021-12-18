import 'package:flutter/material.dart';
import 'package:flutter_application/cutomProgressBar.dart';
import 'package:provider/provider.dart';

const Color firstColor = Color(0xFFF44336);
const Color secondColor = Color(0xFF4caf50);

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String price;
  final String notification;
  final int quantity;
  final int stokBarang;
  final Function onAddCartTap;
  final Function onIncTap;
  final Function onDecTap;

  final TextStyle textStyle = TextStyle(
      fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey[800]);

  ProductCard(
      {this.imageUrl = "",
      this.name = "",
      this.price = "",
      this.notification = null,
      this.quantity = 0,
      this.stokBarang = 10,
      this.onAddCartTap,
      this.onIncTap,
      this.onDecTap});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedContainer(
          margin: EdgeInsets.only(left: 10, right: 10),
          padding: EdgeInsets.all(5),
          duration: Duration(milliseconds: 300),
          width: 130,
          height: (notification != null) ? 320 : 300,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 3,
                    offset: Offset(1, 1),
                    color: Colors.black.withOpacity(0.3))
              ],
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8)),
              color: secondColor),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              (notification != null) ? notification : "",
              style: textStyle.copyWith(color: Colors.white),
            ),
          ),
        ),
        Container(
          width: 150,
          height: 300,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 6,
                    offset: Offset(1, 1))
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ChangeNotifierProvider<BarState>(
                create: (context) => BarState(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: 150,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16)),
                            image: DecorationImage(
                                image: NetworkImage(imageUrl),
                                fit: BoxFit.cover))),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        name,
                        style: textStyle,
                        maxLines: 1,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text(price,
                          style: textStyle.copyWith(
                              fontSize: 12, color: firstColor)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 5),
                      child: Row(
                        children: [
                          Icon(
                            Icons.add_shopping_cart,
                            size: 20,
                            color: Colors.grey[500],
                          ),
                          Text(quantity.toString() + " / 10")
                        ],
                      ),
                    ),
                    Consumer<BarState>(
                      builder: (context, value, child) => Container(
                        margin: EdgeInsets.only(top: 10),
                        child: CustomProgressBar(
                          width: 140,
                          totalValue: value.bar,
                          value: value.bar - quantity,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    width: 140,
                    height: 30,
                    decoration:
                        BoxDecoration(border: Border.all(color: firstColor)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: onIncTap,
                          child: Container(
                            width: 30,
                            height: 30,
                            color: firstColor,
                            child: Icon(
                              Icons.add,
                              size: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          quantity.toString(),
                          style: textStyle,
                        ),
                        GestureDetector(
                          onTap: onDecTap,
                          child: Container(
                            width: 30,
                            height: 30,
                            color: firstColor,
                            child: Icon(
                              Icons.remove,
                              size: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 140,
                    child: RaisedButton(
                      onPressed: onAddCartTap,
                      color: firstColor,
                      child: Icon(Icons.add_shopping_cart,
                          size: 18, color: Colors.white),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16))),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
