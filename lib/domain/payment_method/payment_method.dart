import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_method.freezed.dart';

@freezed
abstract class PaymentMethod implements _$PaymentMethod {
  const factory PaymentMethod({
    required int id,
    required String name,
  }) = _PaymentMethod;

  const PaymentMethod._();

  factory PaymentMethod.empty() => PaymentMethod(
        id: 0,
        name: '',
      );
}
