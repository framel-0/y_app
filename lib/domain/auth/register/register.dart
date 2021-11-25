import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_objects.dart';

part 'register.freezed.dart';

@freezed
abstract class Register implements _$Register {
  const factory Register({
    required FullName fullName,
    required CountryCode countryCode,
    required PhoneNumber phoneNumber,
    required Password password,
    required String firebaseToken,
  }) = _Register;

  const Register._();

  factory Register.empty() => Register(
        fullName: FullName(''),
        countryCode: CountryCode(''),
        phoneNumber: PhoneNumber(''),
        password: Password(''),
        firebaseToken: '',
      );
}
