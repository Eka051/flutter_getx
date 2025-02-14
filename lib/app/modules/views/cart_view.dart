import 'package:flutter/material.dart';
import 'package:flutter_getx/app/modules/controllers/cart_controller.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CartView extends StatelessWidget {
  CartView({super.key});
  final CartController cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () {
                return ListView.builder(
                  itemCount: cartController.cartItems.length,
                  itemBuilder: (context, index) {
                    final item = cartController.cartItems[index];
                    return ListTile(
                      title: Text(item.name),
                      subtitle: Text(
                        NumberFormat.currency(
                                locale: 'id_ID',
                                symbol: 'Rp. ',
                                decimalDigits: 0)
                            .format(item.price),
                      ),
                      trailing: IconButton(
                        onPressed: () => cartController.removeFromCart(item),
                        icon: const Icon(Icons.remove),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Obx(
            () {
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Total: ${NumberFormat.currency(locale: 'id_ID', symbol: 'Rp. ', decimalDigits: 0).format(cartController.totalAmounts.value)}',
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.w700),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
