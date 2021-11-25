import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import 'delivery_location.dart';
import 'delivery_location_failure.dart';

abstract class IDeliveryLocationRepository {
  Future<Either<DeliveryLocationFailure, KtList<DeliveryLocation>>>
      getDeliveryLocations();
}
