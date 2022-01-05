import 'package:digital_ordering_system/model/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductOverview extends StatelessWidget {
  final Item? items;
  const ProductOverview({Key? key, this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(items!.name!),
      ),
      body: SizedBox(
        height: 400,
        child: Image.network(items!.imageUrl!),
      ),
    );
  }
}
