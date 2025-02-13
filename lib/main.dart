import 'package:flutter/material.dart';
import 'package:flutter_getx/routes/app_pages.dart';
import 'package:get/get.dart';

void main() {
  runApp(FlutterGetX());
}

class FlutterGetX extends StatelessWidget {
  const FlutterGetX({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Product List',
      initialRoute: Routes.PRODUCT,
      getPages: AppPages.routes,
    );
  }
}
