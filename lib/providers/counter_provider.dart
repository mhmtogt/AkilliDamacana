import 'package:akilli_damacana_mini_project/model/product.dart';
import 'package:flutter/foundation.dart';

class ProductProvider with ChangeNotifier {
  Product? _product;

  Product? get product => _product;

  void setProduct(Product selectedProduct) {
    _product = selectedProduct;
    notifyListeners();
  }
}
