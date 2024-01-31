import 'dart:async';
import 'package:bloc_provider/bloc_provider.dart';
class ProductBloc extends Bloc {
  final List<String> _products = [
    'Product 1',
    'Product 2',
    'Product 3',
    'Product 4',
    'Product 5',
  ];
  final _searchController = StreamController<String>();
  Stream<String> get searchStream => _searchController.stream;
  final _cartController = StreamController<List<String>>.broadcast();
  Stream<List<String>> get cartStream => _cartController.stream;
  ProductBloc() {
    _searchController.stream.listen((searchQuery) {
      if (searchQuery.isNotEmpty) {
        final List<String> results = _products
            .where((product) =>
            product.toLowerCase().contains(searchQuery.toLowerCase()))
            .toList();
        _cartController.sink.add(results);
      } else {
        _cartController.sink.add(_products);
      }
    });
  }
  void dispose() {
    _searchController.close();
    _cartController.close();
  }
}