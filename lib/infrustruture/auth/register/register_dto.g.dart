// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterDto _$$_RegisterDtoFromJson(Map<String, dynamic> json) =>
    _$_RegisterDto(
      fullName: json['fullName'] as String,
      countryCode: json['countryCode'] as String,
      phoneNumber: json['phoneNumber'] as String,
      password: json['password'] as String,
      firebaseToken: json['firebaseToken'] as String,
    );

Map<String, dynamic> _$$_RegisterDtoToJson(_$_RegisterDto instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'countryCode': instance.countryCode,
      'phoneNumber': instance.phoneNumber,
      'password': instance.password,
      'firebaseToken': instance.firebaseToken,
    };
