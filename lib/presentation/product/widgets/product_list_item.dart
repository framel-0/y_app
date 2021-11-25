import 'package:flutter/material.dart';

import '../../../domain/product/product.dart';

class ProductListItem extends StatelessWidget {
  final Product product;
  const ProductListItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 60,
              child: Image(
                  image: AssetImage(
                '',
              )),
            ),
          ),
          Text(
            product.name,
            style: Theme.of(context).primaryTextTheme.bodyText2!.copyWith(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            '${product.wieghtStr()} = ${product.priceStr()}',
            style: Theme.of(context).primaryTextTheme.headline6!.copyWith(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
