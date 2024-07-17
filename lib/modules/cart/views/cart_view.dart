import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_app/modules/cart/controllers/cart_controller.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    CartController _controller = Get.find();

    return Scaffold(
        appBar: AppBar(title: Text('Cart')),
        body: SafeArea(child: GetBuilder<CartController>(builder: (controller) {
          return ListView.separated(
            itemCount: controller.items.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.network(
                  _controller.items[index].image,
                  width: 100,
                  height: 100,
                ),
                title: Text(
                  controller.items[index].title,
                ),
                subtitle: Text(
                  'Amount: ${controller.items[index].amount}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                // trailing: ,
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          );
        })));
  }
}
