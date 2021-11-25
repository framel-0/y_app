// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterTearOff {
  const _$RegisterTearOff();

  _Register call(
      {required FullName fullName,
      required CountryCode countryCode,
      required PhoneNumber phoneNumber,
      required Password password,
      required String firebaseToken}) {
    return _Register(
      fullName: fullName,
      countryCode: countryCode,
      phoneNumber: phoneNumber,
      password: password,
      firebaseToken: firebaseToken,
    );
  }
}

/// @nodoc
const $Register = _$RegisterTearOff();

/// @nodoc
mixin _$Register {
  FullName get fullName => throw _privateConstructorUsedError;
  CountryCode get countryCode => throw _privateConstructorUsedError;
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  String get firebaseToken => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterCopyWith<Register> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterCopyWith<$Res> {
  factory $RegisterCopyWith(Register value, $Res Function(Register) then) =
      _$RegisterCopyWithImpl<$Res>;
  $Res call(
      {FullName fullName,
      CountryCode countryCode,
      PhoneNumber phoneNumber,
      Password password,
      String firebaseToken});
}

/// @nodoc
class _$RegisterCopyWithImpl<$Res> implements $RegisterCopyWith<$Res> {
  _$RegisterCopyWithImpl(this._value, this._then);

  final Register _value;
  // ignore: unused_field
  final $Res Function(Register) _then;

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
              as FullName,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as CountryCode,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      firebaseToken: firebaseToken == freezed
          ? _value.firebaseToken
          : firebaseToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RegisterCopyWith<$Res> implements $RegisterCopyWith<$Res> {
  factory _$RegisterCopyWith(_Register value, $Res Function(_Register) then) =
      __$RegisterCopyWithImpl<$Res>;
  @override
  $Res call(
      {FullName fullName,
      CountryCode countryCode,
      PhoneNumber phoneNumber,
      Password password,
      String firebaseToken});
}

/// @nodoc
class __$RegisterCopyWithImpl<$Res> extends _$RegisterCopyWithImpl<$Res>
    implements _$RegisterCopyWith<$Res> {
  __$RegisterCopyWithImpl(_Register _value, $Res Function(_Register) _then)
      : super(_value, (v) => _then(v as _Register));

  @override
  _Register get _value => super._value as _Register;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? countryCode = freezed,
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? firebaseToken = freezed,
  }) {
    return _then(_Register(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as FullName,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as CountryCode,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      firebaseToken: firebaseToken == freezed
          ? _value.firebaseToken
          : firebaseToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Register extends _Register {
  const _$_Register(
      {required this.fullName,
      required this.countryCode,
      required this.phoneNumber,
      required this.password,
      required this.firebaseToken})
      : super._();

  @override
  final FullName fullName;
  @override
  final CountryCode countryCode;
  @override
  final PhoneNumber phoneNumber;
  @override
  final Password password;
  @override
  final String firebaseToken;

  @override
  String toString() {
    return 'Register(fullName: $fullName, countryCode: $countryCode, phoneNumber: $phoneNumber, password: $password, firebaseToken: $firebaseToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Register &&
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
  _$RegisterCopyWith<_Register> get copyWith =>
      __$RegisterCopyWithImpl<_Register>(this, _$identity);
}

abstract class _Register extends Register {
  const factory _Register(
      {required FullName fullName,
      required CountryCode countryCode,
      required PhoneNumber phoneNumber,
      required Password password,
      required String firebaseToken}) = _$_Register;
  const _Register._() : super._();

  @override
  FullName get fullName;
  @override
  CountryCode get countryCode;
  @override
  PhoneNumber get phoneNumber;
  @override
  Password get password;
  @override
  String get firebaseToken;
  @override
  @JsonKey(ignore: true)
  _$RegisterCopyWith<_Register> get copyWith =>
      throw _privateConstructorUsedError;
}
