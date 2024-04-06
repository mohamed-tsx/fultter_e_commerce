import 'package:flutter/material.dart';
import 'package:fultter_e_commerce/models/product.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        // Product image
        Icon(Icons.favorite),

        // Product name
        Text(product.name),

        // Product description
        Text(product.description),

        // Product price + add to cart button
        Text(product.price.toStringAsFixed(2))
      ]),
    );
  }
}
