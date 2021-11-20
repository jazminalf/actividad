import 'Product.dart';

class ProductItem {
  int quantity;
  final Product? product;
  final Productf? productf;
  final Productc? productc;
  final Productga? productga;

  ProductItem({this.quantity = 1, required this.product, required this.productf, required this.productc, required this.productga});

  void increment() {
    quantity++;
  }

  // void add() {}

  // void substract() {}
}
