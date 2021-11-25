part of 'delivery_location_bloc.dart';

@freezed
class DeliveryLocationState with _$DeliveryLocationState {
  const factory DeliveryLocationState.initial() = _Initial;
  const factory DeliveryLocationState.loadInProgress() = _LoadInProgress;
  const factory DeliveryLocationState.loadSuccess(
      KtList<DeliveryLocation> locations) = _LoadSuccess;
  const factory DeliveryLocationState.loadFailure(
      DeliveryLocationFailure failure) = _LoadFailure;
}
