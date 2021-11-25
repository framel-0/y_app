import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/product/product.dart';

part 'product_dto.freezed.dart';
part 'product_dto.g.dart';

@freezed
class ProductDto with _$ProductDto {
  const factory ProductDto({
    required int id,
    String? image,
    required String name,
    String? description,
    required double price,
    required double wieght,
  }) = _ProductDto;

  const ProductDto._();

  factory ProductDto.fromDomain(Product product) {
    return ProductDto(
        id: product.id,
        image: product.image,
        name: product.name,
        description: product.description,
        price: product.price,
        wieght: product.wieght);
  }

  Product toDomain() {
    return Product(
      id: (id),
      image: image ?? '',
      name: (name),
      description: description,
      price: price,
      wieght: wieght,
    );
  }

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);
}
