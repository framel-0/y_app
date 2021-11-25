import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_form_event.dart';
part 'order_form_state.dart';
part 'order_form_bloc.freezed.dart';

class OrderFormBloc extends Bloc<OrderFormEvent, OrderFormState> {
  OrderFormBloc() : super(_Initial()) {
    on<OrderFormEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
