import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  static const routeName = '/product-detail';
  //final String title;
  //final double price;

  //ProductDetailPage(this.title, this.price);
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
        centerTitle: true,
      ),
    );
  }
}
