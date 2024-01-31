import 'package:bloc_provider/bloc_provider.dart';
import 'package:dummyapp/pages/landing_page.dart';
import 'package:flutter/material.dart';

import 'features/products/blocs/product_bloc.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      creator: (context, bag) => ProductBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Product Listing App',
        home: LandingPage(),
      ),
    );
  }
}

