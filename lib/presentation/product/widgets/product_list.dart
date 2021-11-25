import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';
import '../../../domain/product/product.dart';
import 'product_list_item.dart';

class ProductList extends StatelessWidget {
  final KtList<Product> products;
  const ProductList({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return ProductListItem(product: products[index]);
      },
      itemCount: products.size,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 1.4,
      ),
    );
  }
}
