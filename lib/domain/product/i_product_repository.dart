import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import 'product.dart';
import 'product_failure.dart';

abstract class IProductRepository {
  Future<Either<ProductFailure, KtList<Product>>> getProducts();
}
