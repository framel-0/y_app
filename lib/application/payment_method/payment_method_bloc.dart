import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/payment_method/i_payment_method_repository.dart';
import '../../domain/payment_method/payment_method.dart';
import '../../domain/payment_method/payment_method_failure.dart';

part 'payment_method_bloc.freezed.dart';
part 'payment_method_event.dart';
part 'payment_method_state.dart';

class PaymentMethodBloc extends Bloc<PaymentMethodEvent, PaymentMethodState> {
  final IPaymentMethodRepository _paymentMethodRepository;
  PaymentMethodBloc(this._paymentMethodRepository) : super(_Initial()) {
    on<PaymentMethodEvent>((event, emit) {
      event.map(getPaymentMethodsStarted: (e) async* {
        emit(PaymentMethodState.loadInProgress());

        final failureOrSuccess =
            await _paymentMethodRepository.getPaymentMethods();

        emit(
          failureOrSuccess.fold(
            (f) => PaymentMethodState.loadFailure(f),
            (paymentMethods) => PaymentMethodState.loadSuccess(paymentMethods),
          ),
        );
      });
    });
  }
}
