import 'package:flutter_bloc/flutter_bloc.dart';

class Product {
  String imageUrl;
  String name;
  int price;

  Product({this.imageUrl = "", this.name = "", this.price = 0});
}

class ProductBloc extends Bloc<int, List<Product>> {
  @override
  // TODO: implement initialState
  List<Product> get initialState => [];

  @override
  Stream<List<Product>> mapEventToState(int event) async* {
    // TODO: implement mapEventToState
    List<Product> product = [];
    for (var i = 0; i < event; i++)
      product.add(Product(
          imageUrl: "https://wallpaperaccess.com/full/4116948.jpg",
          name: "Product ke " + i.toString(),
          price: (i + 1) * 5000));

    yield product;
  }
}
