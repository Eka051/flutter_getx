import 'package:flutter/material.dart';
import 'package:flutter_getx/app/modules/models/product_model.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductModel product = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
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
          ],
        ),
      ),
    );
  }
}
