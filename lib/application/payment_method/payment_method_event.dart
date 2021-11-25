part of 'payment_method_bloc.dart';

@freezed
class PaymentMethodEvent with _$PaymentMethodEvent {
  const factory PaymentMethodEvent.getPaymentMethodsStarted() =
      _GetPaymentMethodsStarted;
}
