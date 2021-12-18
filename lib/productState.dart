import 'package:flutter/foundation.dart';

class ProductState with ChangeNotifier {
  int _quantity = 0;

  int get quantity => _quantity;
  set quantity(int values) {
    _quantity = values;
    notifyListeners();
  }
}


// ChangeNotifierProvider<ProductState>(
//             create: (context) => ProductState(),
//             child: Container(
//               margin: EdgeInsets.all(20),
//               child: Align(
//                 alignment: Alignment.topCenter,
//                 child: Consumer<ProductState>(
//                   builder: (context, value, child) => ProductCard(
//                     imageUrl: "https://wallpaperaccess.com/full/4116948.jpg",
//                     name: "Buah Buahan Mix",
//                     price: "Rp25000",
                    
//                   ),
//                 ),
//               ),
//             ),
//           ),
