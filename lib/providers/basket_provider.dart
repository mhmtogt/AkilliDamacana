import 'package:akilli_damacana_mini_project/model/basket.dart';
import 'package:akilli_damacana_mini_project/model/basket_item.dart';
import 'package:akilli_damacana_mini_project/model/product.dart';
import 'package:flutter/foundation.dart';

class BasketProvider with ChangeNotifier {
  final Basket _basket = Basket([]);

  Basket get basket => _basket;

  void addProduct(Product selectedProduct) {
    for (final basketItem in _basket.products) {
      if (basketItem.product.id == selectedProduct.id) {
        basketItem.quantity++;
        notifyListeners();
        return;
      }
    }
    _basket.products.add(BasketItem(selectedProduct, 1));
    notifyListeners();
    return;
  }

  void increaseQuantity(BasketItem basketItem) {
    //
  }

  void decreaseQuantity(BasketItem basketItem) {
    //
  }
}
