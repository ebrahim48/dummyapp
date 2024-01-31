import 'package:flutter/material.dart';

class ProductSearch extends StatelessWidget {
  const ProductSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (query) {
      },
      decoration: const InputDecoration(
        hintText: 'Search',
      ),
    );
  }
}
