import 'package:flutter/material.dart';
import 'package:flutter_getx/app/modules/controllers/product_controller.dart';
import 'package:flutter_getx/app/modules/views/product_details_view.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

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
                subtitle: Text(NumberFormat.currency(locale: 'id_ID', symbol: 'Rp. ', decimalDigits: 0).format(product.price)),
                onTap: () {
                  Get.to(ProductDetailsView(), arguments: product);
                },
              );
            },
          );
        },
      ),
    );
  }
}
