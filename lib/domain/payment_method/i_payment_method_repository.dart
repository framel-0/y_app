import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import 'payment_method.dart';
import 'payment_method_failure.dart';

abstract class IPaymentMethodRepository {
  Future<Either<PaymentMethodFailure, KtList<PaymentMethod>>>
      getPaymentMethods();
}
