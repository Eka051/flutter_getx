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
        title: const 
        Text('Product List'),
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: productController.product.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(productController.product[index].name),
              subtitle: Text(productController.product[index].price.toString()),
            );
          },
        );
      },),
    );
  }
}