import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/src/collection/kt_list.dart';

import '../../domain/product/i_product_repository.dart';
import '../../domain/product/product.dart';
import '../../domain/product/product_failure.dart';
import 'remote_service/i_product_remote_service.dart';

@LazySingleton(as: IProductRepository)
class ProductRepository implements IProductRepository {
  final IProductRemoteService remoteService;

  ProductRepository(this.remoteService);
  @override
  Future<Either<ProductFailure, KtList<Product>>> getProducts() {
    // TODO: implement getProducts
    throw UnimplementedError();
  }
}
