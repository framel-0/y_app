import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/delivery_location/delivery_location.dart';
import '../../domain/delivery_location/delivery_location_failure.dart';
import '../../domain/delivery_location/i_delivery_location_repository.dart';
import 'local_service/delivery_location_local_service.dart';

@LazySingleton(as: IDeliveryLocationRepository)
class DeliveryLocationRepository implements IDeliveryLocationRepository {
  final DeliveryLocationLocalService _localService;

  DeliveryLocationRepository(this._localService);
  @override
  Future<Either<DeliveryLocationFailure, KtList<DeliveryLocation>>>
      getDeliveryLocations() async {
    try {
      final response = await _localService.getDeliveryLocations();

      return right(
          response.map((location) => location.toDomain()).toImmutableList());
    } catch (e) {
      return left(const DeliveryLocationFailure.unexpected());
    }
  }
}
