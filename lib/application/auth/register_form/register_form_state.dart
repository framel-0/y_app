part of 'register_form_bloc.dart';

@freezed
abstract class RegisterFormState with _$RegisterFormState {
  const factory RegisterFormState({
    required FullName firstName,
    required CountryCode countryCode,
    required PhoneNumber phoneNumber,
    required Password password,
    required ConfirmPassword confirmPassword,
    required bool passwordVisible,
    required bool isSubmitting,
    required bool showErrorMessage,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _RegisterFormState;

  factory RegisterFormState.initial() => RegisterFormState(
        firstName: FullName(''),
        countryCode: CountryCode(''),
        phoneNumber: PhoneNumber(''),
        password: Password(''),
        confirmPassword: ConfirmPassword('', '_'),
        passwordVisible: true,
        isSubmitting: false,
        showErrorMessage: false,
        authFailureOrSuccessOption: none(),
      );
}
