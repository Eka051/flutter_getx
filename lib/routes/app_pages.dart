import 'package:flutter_getx/app/modules/views/cart_view.dart';
import 'package:flutter_getx/app/modules/views/product_details_view.dart';
import 'package:flutter_getx/app/modules/views/product_view.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.PRODUCT,
      page: () => ProductView(),
    ),
    GetPage(
      name: Routes.PRODUCT_DETAILS,
      page: () => ProductDetailsView(),
    ),
    GetPage(
      name: Routes.CART,
      page: () => CartView(),
    )
  ];
}
