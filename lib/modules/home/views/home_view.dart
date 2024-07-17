import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_app/modules/home/controllers/home_controller.dart';
import 'package:get_app/modules/home/views/product_widget.dart';
import 'package:get_app/routes/pages.dart';
import 'package:get_app/utils/widgets/appbar.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppBarWidget(title: Text('Home')),
        body: SafeArea(
            child: Obx(() => controller.isLoadingProduct
                ? const Center(child: CircularProgressIndicator())
                : GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 15,
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    children: controller.products
                        .map((product) => Product(
                              product: product,
                              onTap: () {
                                controller.setSelectedProduct(product);
                                Get.toNamed(Routes.HOME + Routes.DETAIL);
                              },
                            ))
                        .toList()))));
  }
}
