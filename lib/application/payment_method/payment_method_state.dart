part of 'payment_method_bloc.dart';

@freezed
class PaymentMethodState with _$PaymentMethodState {
  const factory PaymentMethodState.initial() = _Initial;
  const factory PaymentMethodState.loadInProgress() = _LoadInProgress;
  const factory PaymentMethodState.loadSuccess(
      KtList<PaymentMethod> paymentMethods) = _LoadSuccess;
  const factory PaymentMethodState.loadFailure(PaymentMethodFailure failure) =
      _LoadFailure;
}
