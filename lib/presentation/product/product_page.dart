import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/product/product_bloc.dart';
import '../../injection.dart';
import 'widgets/product_list.dart';
import 'widgets/product_list_item.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductBloc>(),
      child: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            loadSuccess: (state) {
              final products = state.products;
              return ProductList(
                products: products,
              );
            },
            loadFailure: (_) => Container(),
          );
        },
      ),
    );
  }
}
