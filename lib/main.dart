import 'package:flutter/material.dart';
import 'package:flutter_application/PSMcart.dart';
import 'package:flutter_application/PSMmoney.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<ProviderMoney>(
            create: (context) => ProviderMoney(),
          ),
          ChangeNotifierProvider<ProviderCart>(
            create: (context) => ProviderCart(),
          )
        ],
        child: Scaffold(
          floatingActionButton: Consumer<ProviderMoney>(
            builder: (context, moneys, child) => Consumer<ProviderCart>(
              builder: (context, carts, child) => FloatingActionButton(
                onPressed: () {
                  if (moneys.balance >= 500) {
                    carts.quantity += 1;
                    moneys.balance -= 500;
                  }
                },
                child: Icon(Icons.add_shopping_cart),
                backgroundColor: Colors.purple,
              ),
            ),
          ),
          appBar: AppBar(
            title: Text("MultiProvider"),
            backgroundColor: Colors.purple,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Balance"),
                    Container(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Consumer<ProviderMoney>(
                          builder: (context, value, child) => Text(
                            value.balance.toString(),
                            style: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      height: 30,
                      width: 150,
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.purple[100],
                          border: Border.all(color: Colors.purple, width: 2)),
                    )
                  ],
                ),
                Container(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Consumer<ProviderCart>(
                      builder: (context, value, child) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Apple (500) * " + value.quantity.toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            (500 * value.quantity).toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  height: 30,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black, width: 2)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
