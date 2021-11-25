import 'package:injectable/injectable.dart';

import '../payment_method_dto.dart';
import 'i_payment_method_local_service.dart';

@LazySingleton(as: IPaymentMethodLocalService)
class PaymentMethodLocalService implements IPaymentMethodLocalService {
  @override
  List<PaymentMethodDto> getPaymentMethods() {
    return const <PaymentMethodDto>[
      PaymentMethodDto(
        id: 1,
        name: 'Paiement en espèces',
      ),
      PaymentMethodDto(
        id: 2,
        name: 'Paiement Orange Money',
      ),
    ];
  }
}
