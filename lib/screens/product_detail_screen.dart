import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  static String routeNamed = '/product-detail';
  // final String title;

  // ProductDetailScreen(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("title"),
      ),
      body: Center(
        child: Text("data"),
      ),
    );
  }
}
