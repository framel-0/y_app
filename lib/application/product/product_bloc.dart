import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/product/i_product_repository.dart';
import '../../domain/product/product.dart';
import '../../domain/product/product_failure.dart';

part 'product_bloc.freezed.dart';
part 'product_event.dart';
part 'product_state.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final IProductRepository _productRepository;

  ProductBloc(this._productRepository) : super(_Initial()) {
    on<ProductEvent>((event, emit) {
      event.map(getProductsStarted: (e) async* {
        emit(const ProductState.loadInProgress());
        final failure0rSuccess = await _productRepository.getProducts();

        emit(
          failure0rSuccess.fold(
            (f) => ProductState.loadFailure(f),
            (products) => ProductState.loadSuccess(products),
          ),
        );
      });
    });
  }
}
