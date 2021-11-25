import 'package:injectable/injectable.dart';

import '../delivery_location_dto.dart';
import 'i_delivery_location_local_service.dart';

@LazySingleton(as: IDeliveryLocationLocalService)
class DeliveryLocationLocalService implements IDeliveryLocationLocalService {
  @override
  List<DeliveryLocationDto> getDeliveryLocations() {
    return <DeliveryLocationDto>[
      DeliveryLocationDto(
        id: 1,
        name: '',
        amount: 200,
      ),
      DeliveryLocationDto(
        id: 2,
        name: '',
        amount: 200,
      ),
      DeliveryLocationDto(
        id: 3,
        name: '',
        amount: 200,
      ),
      DeliveryLocationDto(
        id: 4,
        name: '',
        amount: 200,
      ),
      DeliveryLocationDto(
        id: 5,
        name: '',
        amount: 200,
      ),
    ];
  }
}
