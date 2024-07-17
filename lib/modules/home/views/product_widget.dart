import 'package:flutter/material.dart';
import 'package:get_app/models/product/product_model.dart';

class Product extends StatelessWidget {
  final ProductModel product;
  final Function() onTap;
  const Product({super.key, required this.product, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.network(
              product.image ?? '',
              width: 70,
              height: 120,
              errorBuilder: (context, error, stackTrace) => const Center(
                child: Text('Image error'),
              ),
            ),
          ),
          Text(
            product.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 10),
          Text(
            '฿${product.price.toStringAsFixed(2)}',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          )
        ],
      ),
    );
  }
}
