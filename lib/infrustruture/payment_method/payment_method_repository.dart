import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/payment_method/i_payment_method_repository.dart';
import '../../domain/payment_method/payment_method.dart';
import '../../domain/payment_method/payment_method_failure.dart';
import 'local_service/i_payment_method_local_service.dart';

@LazySingleton(as: IPaymentMethodRepository)
class PaymentMethodRepository implements IPaymentMethodRepository {
  final IPaymentMethodLocalService _localService;
  // final IPaymentMethodRemoteService _remoteService;

  PaymentMethodRepository(this._localService);

  @override
  Future<Either<PaymentMethodFailure, KtList<PaymentMethod>>>
      getPaymentMethods() async {
    try {
      final response = await _localService.getPaymentMethods();

      return right(
          response.map((method) => method.toDomain()).toImmutableList());
    } catch (e) {
      return left(const PaymentMethodFailure.unexpected());
    }
  }
}
