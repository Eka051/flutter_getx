import 'package:get/get.dart';
import 'package:flutter_getx/app/modules/models/product_model.dart';

class CartController extends GetxController {
  var cartItems = <ProductModel>[].obs;
  var totalAmounts = 0.obs;

  void addToCart(ProductModel product) {
    cartItems.add(product);
    calculateTotal();
  }

  void removeFromCart(ProductModel product) {
    cartItems.remove(product);
    calculateTotal();
  }

  void calculateTotal() {
    totalAmounts.value = cartItems.fold(0, (sum, item) => sum + item.price);
  }
}
