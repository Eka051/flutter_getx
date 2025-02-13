import 'package:flutter_getx/app/modules/models/product_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var product = <ProductModel>[].obs;

  @override
  void onInit() {
    product.addAll([
      ProductModel(name: 'Silverqueen', price: 25000),
      ProductModel(name: 'Dairy Milk', price: 30000),
      ProductModel(name: 'Kinderjoy', price: 15000),
    ]);
    super.onInit();
  }
}
