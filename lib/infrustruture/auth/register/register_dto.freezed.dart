// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterDto _$RegisterDtoFromJson(Map<String, dynamic> json) {
  return _RegisterDto.fromJson(json);
}

/// @nodoc
class _$RegisterDtoTearOff {
  const _$RegisterDtoTearOff();

  _RegisterDto call(
      {required String fullName,
      required String countryCode,
      required String phoneNumber,
      required String password,
      required String firebaseToken}) {
    return _RegisterDto(
      fullName: fullName,
      countryCode: countryCode,
      phoneNumber: phoneNumber,
      password: password,
      firebaseToken: firebaseToken,
    );
  }

  RegisterDto fromJson(Map<String, Object?> json) {
    return RegisterDto.fromJson(json);
  }
}

/// @nodoc
const $RegisterDto = _$RegisterDtoTearOff();

/// @nodoc
mixin _$RegisterDto {
  String get fullName => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get firebaseToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterDtoCopyWith<RegisterDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterDtoCopyWith<$Res> {
  factory $RegisterDtoCopyWith(
          RegisterDto value, $Res Function(RegisterDto) then) =
      _$RegisterDtoCopyWithImpl<$Res>;
  $Res call(
      {String fullName,
      String countryCode,
      String phoneNumber,
      String password,
      String firebaseToken});
}

/// @nodoc
class _$RegisterDtoCopyWithImpl<$Res> implements $RegisterDtoCopyWith<$Res> {
  _$RegisterDtoCopyWithImpl(this._value, this._then);

  final RegisterDto _value;
  // ignore: unused_field
  final $Res Function(RegisterDto) _then;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? countryCode = freezed,
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? firebaseToken = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      firebaseToken: firebaseToken == freezed
          ? _value.firebaseToken
          : firebaseToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RegisterDtoCopyWith<$Res>
    implements $RegisterDtoCopyWith<$Res> {
  factory _$RegisterDtoCopyWith(
          _RegisterDto value, $Res Function(_RegisterDto) then) =
      __$RegisterDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String fullName,
      String countryCode,
      String phoneNumber,
      String password,
      String firebaseToken});
}

/// @nodoc
class __$RegisterDtoCopyWithImpl<$Res> extends _$RegisterDtoCopyWithImpl<$Res>
    implements _$RegisterDtoCopyWith<$Res> {
  __$RegisterDtoCopyWithImpl(
      _RegisterDto _value, $Res Function(_RegisterDto) _then)
      : super(_value, (v) => _then(v as _RegisterDto));

  @override
  _RegisterDto get _value => super._value as _RegisterDto;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? countryCode = freezed,
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? firebaseToken = freezed,
  }) {
    return _then(_RegisterDto(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      firebaseToken: firebaseToken == freezed
          ? _value.firebaseToken
          : firebaseToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterDto extends _RegisterDto {
  const _$_RegisterDto(
      {required this.fullName,
      required this.countryCode,
      required this.phoneNumber,
      required this.password,
      required this.firebaseToken})
      : super._();

  factory _$_RegisterDto.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterDtoFromJson(json);

  @override
  final String fullName;
  @override
  final String countryCode;
  @override
  final String phoneNumber;
  @override
  final String password;
  @override
  final String firebaseToken;

  @override
  String toString() {
    return 'RegisterDto(fullName: $fullName, countryCode: $countryCode, phoneNumber: $phoneNumber, password: $password, firebaseToken: $firebaseToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterDto &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.firebaseToken, firebaseToken) ||
                other.firebaseToken == firebaseToken));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, fullName, countryCode, phoneNumber, password, firebaseToken);

  @JsonKey(ignore: true)
  @override
  _$RegisterDtoCopyWith<_RegisterDto> get copyWith =>
      __$RegisterDtoCopyWithImpl<_RegisterDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterDtoToJson(this);
  }
}

abstract class _RegisterDto extends RegisterDto {
  const factory _RegisterDto(
      {required String fullName,
      required String countryCode,
      required String phoneNumber,
      required String password,
      required String firebaseToken}) = _$_RegisterDto;
  const _RegisterDto._() : super._();

  factory _RegisterDto.fromJson(Map<String, dynamic> json) =
      _$_RegisterDto.fromJson;

  @override
  String get fullName;
  @override
  String get countryCode;
  @override
  String get phoneNumber;
  @override
  String get password;
  @override
  String get firebaseToken;
  @override
  @JsonKey(ignore: true)
  _$RegisterDtoCopyWith<_RegisterDto> get copyWith =>
      throw _privateConstructorUsedError;
}
