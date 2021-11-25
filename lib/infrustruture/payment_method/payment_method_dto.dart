import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/payment_method/payment_method.dart';

part 'payment_method_dto.freezed.dart';
part 'payment_method_dto.g.dart';

@freezed
abstract class PaymentMethodDto implements _$PaymentMethodDto {
  const factory PaymentMethodDto({
    required int id,
    required String name,
  }) = _PaymentMethodDto;

  const PaymentMethodDto._();

  factory PaymentMethodDto.fromDomain(PaymentMethod paymentMethod) {
    return PaymentMethodDto(
      id: paymentMethod.id,
      name: paymentMethod.name,
    );
  }

  PaymentMethod toDomain() {
    return PaymentMethod(
      id: (id),
      name: (name),
    );
  }

  factory PaymentMethodDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodDtoFromJson(json);
}
