import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_location.freezed.dart';

@freezed
class DeliveryLocation with _$DeliveryLocation {
  const factory DeliveryLocation({
    required int id,
    required String name,
    required double amount,
  }) = _DeliveryLocation;

  const DeliveryLocation._();

  factory DeliveryLocation.empty() => DeliveryLocation(
        id: (0),
        name: (''),
        amount: 0.0,
      );

  String displayStr() {
    return '$name - $amount';
  }
}
