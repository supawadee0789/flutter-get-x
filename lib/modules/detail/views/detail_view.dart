import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_app/models/product/product_model.dart';
import 'package:get_app/modules/detail/controllers/detail_controller.dart';

class DetailPage extends GetView<DetailController> {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    ProductModel? product = controller.product;
    if (product == null) return const Center(child: Text('Failed'));
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 400,
              child: Center(
                child: Image.network(
                  product.image ?? '',
                  width: 200,
                  height: 250,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              product.title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              '฿${product.price.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 26,
              ),
            ),
            const SizedBox(height: 10),
            Text(product.description)
          ],
        ),
      )),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 22.0, horizontal: 15),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Add to cart'),
        ),
      ),
    );
  }
}
