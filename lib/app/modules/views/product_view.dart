import 'package:flutter/material.dart';
import 'package:flutter_getx/app/modules/controllers/product_controller.dart';
import 'package:get/get.dart';

class ProductView extends StatelessWidget {
  ProductView({super.key});
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      body: Obx(
        () {
          return ListView.builder(
            itemCount: productController.product.length,
            itemBuilder: (context, index) {
              final product = productController.product[index];
              return ListTile(
                title: Text(product.name),
                subtitle: Text('Rp. ${product.price}'),
                onTap: () {
                  Get.toNamed('/product-detail', arguments: product);
                },
              );
            },
          );
        },
      ),
    );
  }
}
