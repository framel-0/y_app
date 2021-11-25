part of 'order_form_bloc.dart';

@freezed
class OrderFormEvent with _$OrderFormEvent {
  const factory OrderFormEvent.started() = _Started;
}