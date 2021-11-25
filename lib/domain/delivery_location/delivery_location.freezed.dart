// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'delivery_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DeliveryLocationTearOff {
  const _$DeliveryLocationTearOff();

  _DeliveryLocation call(
      {required int id, required String name, required double amount}) {
    return _DeliveryLocation(
      id: id,
      name: name,
      amount: amount,
    );
  }
}

/// @nodoc
const $DeliveryLocation = _$DeliveryLocationTearOff();

/// @nodoc
mixin _$DeliveryLocation {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeliveryLocationCopyWith<DeliveryLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryLocationCopyWith<$Res> {
  factory $DeliveryLocationCopyWith(
          DeliveryLocation value, $Res Function(DeliveryLocation) then) =
      _$DeliveryLocationCopyWithImpl<$Res>;
  $Res call({int id, String name, double amount});
}

/// @nodoc
class _$DeliveryLocationCopyWithImpl<$Res>
    implements $DeliveryLocationCopyWith<$Res> {
  _$DeliveryLocationCopyWithImpl(this._value, this._then);

  final DeliveryLocation _value;
  // ignore: unused_field
  final $Res Function(DeliveryLocation) _then;

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
abstract class _$DeliveryLocationCopyWith<$Res>
    implements $DeliveryLocationCopyWith<$Res> {
  factory _$DeliveryLocationCopyWith(
          _DeliveryLocation value, $Res Function(_DeliveryLocation) then) =
      __$DeliveryLocationCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, double amount});
}

/// @nodoc
class __$DeliveryLocationCopyWithImpl<$Res>
    extends _$DeliveryLocationCopyWithImpl<$Res>
    implements _$DeliveryLocationCopyWith<$Res> {
  __$DeliveryLocationCopyWithImpl(
      _DeliveryLocation _value, $Res Function(_DeliveryLocation) _then)
      : super(_value, (v) => _then(v as _DeliveryLocation));

  @override
  _DeliveryLocation get _value => super._value as _DeliveryLocation;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? amount = freezed,
  }) {
    return _then(_DeliveryLocation(
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

class _$_DeliveryLocation extends _DeliveryLocation {
  const _$_DeliveryLocation(
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
    return 'DeliveryLocation(id: $id, name: $name, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeliveryLocation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, amount);

  @JsonKey(ignore: true)
  @override
  _$DeliveryLocationCopyWith<_DeliveryLocation> get copyWith =>
      __$DeliveryLocationCopyWithImpl<_DeliveryLocation>(this, _$identity);
}

abstract class _DeliveryLocation extends DeliveryLocation {
  const factory _DeliveryLocation(
      {required int id,
      required String name,
      required double amount}) = _$_DeliveryLocation;
  const _DeliveryLocation._() : super._();

  @override
  int get id;
  @override
  String get name;
  @override
  double get amount;
  @override
  @JsonKey(ignore: true)
  _$DeliveryLocationCopyWith<_DeliveryLocation> get copyWith =>
      throw _privateConstructorUsedError;
}
