import '../payment_method_dto.dart';

abstract class IPaymentMethodLocalService {
  List<PaymentMethodDto> getPaymentMethods();
}
