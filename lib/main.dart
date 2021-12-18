import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application/ProductBloc.dart';
import 'package:flutter_application/productCard.dart';
import 'package:flutter_application/productState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocProvider(
            create: (context) => ProductBloc(), child: MainMenu()));
  }
}

class MainMenu extends StatelessWidget {
  final Random r = Random();
  @override
  Widget build(BuildContext context) {
    ProductBloc bloc = BlocProvider.of<ProductBloc>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("List View Builder"),
        ),
        body: Column(
          children: [
            RaisedButton(
              child: Text("Create Product"),
              onPressed: () {
                bloc.add(r.nextInt(4) + 2);
              },
            ),
            SizedBox(
              height: 20,
            ),
            BlocBuilder<ProductBloc, List<Product>>(
              builder: (context, state) => Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: state.length,
                  itemBuilder: (context, index) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        (index == 0)
                            ? SizedBox(
                                width: 20,
                              )
                            : Container(),
                        ProductCard(
                          imageUrl: state[index].imageUrl,
                          name: state[index].name,
                          price: state[index].price.toString(),
                          notification: "diskon 10%",
                          quantity: 0,
                          onAddCartTap: () {},
                          onIncTap: () {},
                          onDecTap: () {},
                        ),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    );
                  },
                ),
              ),
            )
          ],
        ));
  }
}
