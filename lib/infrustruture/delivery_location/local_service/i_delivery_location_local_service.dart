import '../delivery_location_dto.dart';

abstract class IDeliveryLocationLocalService {
  List<DeliveryLocationDto> getDeliveryLocations();
}
