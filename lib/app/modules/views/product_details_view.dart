import 'package:flutter/material.dart';
import 'package:flutter_getx/app/modules/controllers/cart_controller.dart';
import 'package:flutter_getx/app/modules/controllers/product_controller.dart';
import 'package:flutter_getx/app/modules/models/product_model.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ProductDetailsView extends StatelessWidget {
  ProductDetailsView({super.key});
  final CartController cartController = Get.find<CartController>();
  final ProductController productController = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
  final ProductModel product = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed('/cart');
            },
            icon: const Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              product.name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              NumberFormat.currency(
                      locale: 'id_ID', symbol: 'Rp. ', decimalDigits: 0)
                  .format(product.price),
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  cartController.addToCart(product);
                  Get.snackbar(
                      'Added to cart', '${product.name} added to your cart');
                },
                child: const Text('Add to Cart'))
          ],
        ),
      ),
    );
  }
}
