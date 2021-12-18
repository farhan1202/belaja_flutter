import 'package:flutter/material.dart';
import 'package:flutter_application/productCard.dart';
import 'package:flutter_application/productState.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("ProductCard"),
            backgroundColor: firstColor,
          ),
          body: ChangeNotifierProvider<ProductState>(
            create: (context) => ProductState(),
            child: Container(
              margin: EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.topCenter,
                child: Consumer<ProductState>(
                  builder: (context, value, child) => ProductCard(
                    imageUrl: "https://wallpaperaccess.com/full/4116948.jpg",
                    name: "Buah Buahan Mix",
                    price: "Rp25000",
                    notification: (value.quantity > 5) ? "diskon 10%" : null,
                    quantity: value.quantity,
                    onAddCartTap: () {},
                    onIncTap: () {
                      value.quantity++;
                    },
                    onDecTap: () {
                      value.quantity--;
                    },
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
