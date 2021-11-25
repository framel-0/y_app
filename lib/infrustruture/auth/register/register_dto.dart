import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/auth/register/register.dart';

part 'register_dto.freezed.dart';
part 'register_dto.g.dart';

@freezed
abstract class RegisterDto implements _$RegisterDto {
  const factory RegisterDto({
    required String fullName,
    required String countryCode,
    required String phoneNumber,
    required String password,
    required String firebaseToken,
  }) = _RegisterDto;

  const RegisterDto._();

  factory RegisterDto.fromDomain(Register register) {
    return RegisterDto(
      fullName: register.fullName.getOrCrash(),
      countryCode: register.countryCode.getOrCrash(),
      phoneNumber: register.phoneNumber.getOrCrash(),
      password: register.password.getOrCrash(),
      firebaseToken: register.firebaseToken,
    );
  }

  factory RegisterDto.fromJson(Map<String, dynamic> json) =>
      _$RegisterDtoFromJson(json);

  // Map<String, dynamic> toJson() => _$RegisterDtoToJson(this);
}
