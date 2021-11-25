import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    String? image,
    required String name,
    String? description,
    required double price,
    required double wieght,
  }) = _Product;

  const Product._();

  factory Product.empty() =>
      Product(id: (0), name: (''), price: 0.0, wieght: 0.0);

  String priceStr() {
    return '$price F';
  }

  String wieghtStr() {
    return '$wieght Kg';
  }
}
