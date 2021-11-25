import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_location_failure.freezed.dart';

@freezed
class DeliveryLocationFailure with _$DeliveryLocationFailure {
  const factory DeliveryLocationFailure.unexpected() = _Unexpected;
}
