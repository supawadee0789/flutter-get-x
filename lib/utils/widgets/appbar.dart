import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_app/modules/cart/controllers/cart_controller.dart';
import 'package:get_app/routes/pages.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key, this.title});

  final Widget? title;

  @override
  Widget build(BuildContext context) {
    CartController controller = Get.find();
    return AppBar(
      title: title,
      actions: [
        IconButton(
            onPressed: () {
              Get.toNamed(Routes.HOME + Routes.CART);
            },
            icon: Badge(
              isLabelVisible: true,
              label: Obx(() => Text(controller.totalAmount.toString())),
              offset: const Offset(1, -1),
              backgroundColor: Colors.redAccent,
              child: const Icon(
                Icons.shopping_cart_rounded,
                size: 36,
              ),
            ))
      ],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
