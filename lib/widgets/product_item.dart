import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {

  final String productName;
  const ProductItem({Key? key, required this.productName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(productName),
      trailing: IconButton(
        icon: const Icon(Icons.add_shopping_cart),
        onPressed: () {

        },
      ),
    );
  }
}
