// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'delivery_location_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DeliveryLocationDtoTearOff {
  const _$DeliveryLocationDtoTearOff();

  _DeliveryLocationDto call(
      {required int id, required String name, required double amount}) {
    return _DeliveryLocationDto(
      id: id,
      name: name,
      amount: amount,
    );
  }
}

/// @nodoc
const $DeliveryLocationDto = _$DeliveryLocationDtoTearOff();

/// @nodoc
mixin _$DeliveryLocationDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeliveryLocationDtoCopyWith<DeliveryLocationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryLocationDtoCopyWith<$Res> {
  factory $DeliveryLocationDtoCopyWith(
          DeliveryLocationDto value, $Res Function(DeliveryLocationDto) then) =
      _$DeliveryLocationDtoCopyWithImpl<$Res>;
  $Res call({int id, String name, double amount});
}

/// @nodoc
class _$DeliveryLocationDtoCopyWithImpl<$Res>
    implements $DeliveryLocationDtoCopyWith<$Res> {
  _$DeliveryLocationDtoCopyWithImpl(this._value, this._then);

  final DeliveryLocationDto _value;
  // ignore: unused_field
  final $Res Function(DeliveryLocationDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$DeliveryLocationDtoCopyWith<$Res>
    implements $DeliveryLocationDtoCopyWith<$Res> {
  factory _$DeliveryLocationDtoCopyWith(_DeliveryLocationDto value,
          $Res Function(_DeliveryLocationDto) then) =
      __$DeliveryLocationDtoCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, double amount});
}

/// @nodoc
class __$DeliveryLocationDtoCopyWithImpl<$Res>
    extends _$DeliveryLocationDtoCopyWithImpl<$Res>
    implements _$DeliveryLocationDtoCopyWith<$Res> {
  __$DeliveryLocationDtoCopyWithImpl(
      _DeliveryLocationDto _value, $Res Function(_DeliveryLocationDto) _then)
      : super(_value, (v) => _then(v as _DeliveryLocationDto));

  @override
  _DeliveryLocationDto get _value => super._value as _DeliveryLocationDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? amount = freezed,
  }) {
    return _then(_DeliveryLocationDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_DeliveryLocationDto extends _DeliveryLocationDto {
  const _$_DeliveryLocationDto(
      {required this.id, required this.name, required this.amount})
      : super._();

  @override
  final int id;
  @override
  final String name;
  @override
  final double amount;

  @override
  String toString() {
    return 'DeliveryLocationDto(id: $id, name: $name, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeliveryLocationDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, amount);

  @JsonKey(ignore: true)
  @override
  _$DeliveryLocationDtoCopyWith<_DeliveryLocationDto> get copyWith =>
      __$DeliveryLocationDtoCopyWithImpl<_DeliveryLocationDto>(
          this, _$identity);
}

abstract class _DeliveryLocationDto extends DeliveryLocationDto {
  const factory _DeliveryLocationDto(
      {required int id,
      required String name,
      required double amount}) = _$_DeliveryLocationDto;
  const _DeliveryLocationDto._() : super._();

  @override
  int get id;
  @override
  String get name;
  @override
  double get amount;
  @override
  @JsonKey(ignore: true)
  _$DeliveryLocationDtoCopyWith<_DeliveryLocationDto> get copyWith =>
      throw _privateConstructorUsedError;
}
