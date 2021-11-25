part of 'delivery_location_bloc.dart';

@freezed
class DeliveryLocationEvent with _$DeliveryLocationEvent {
  const factory DeliveryLocationEvent.getLocationsStarted() =
      _GetLocationsStarted;
}
