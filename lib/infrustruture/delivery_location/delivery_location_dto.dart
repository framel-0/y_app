import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:y_app/domain/delivery_location/delivery_location.dart';

part 'delivery_location_dto.freezed.dart';

@freezed
class DeliveryLocationDto with _$DeliveryLocationDto {
  const factory DeliveryLocationDto({
    required int id,
    required String name,
    required double amount,
  }) = _DeliveryLocationDto;

  const DeliveryLocationDto._();

  DeliveryLocation toDomain() {
    return DeliveryLocation(
      id: (id),
      name: (name),
      amount: (amount),
    );
  }
}
