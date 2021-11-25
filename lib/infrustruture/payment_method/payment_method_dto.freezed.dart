// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_method_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentMethodDto _$PaymentMethodDtoFromJson(Map<String, dynamic> json) {
  return _PaymentMethodDto.fromJson(json);
}

/// @nodoc
class _$PaymentMethodDtoTearOff {
  const _$PaymentMethodDtoTearOff();

  _PaymentMethodDto call({required int id, required String name}) {
    return _PaymentMethodDto(
      id: id,
      name: name,
    );
  }

  PaymentMethodDto fromJson(Map<String, Object?> json) {
    return PaymentMethodDto.fromJson(json);
  }
}

/// @nodoc
const $PaymentMethodDto = _$PaymentMethodDtoTearOff();

/// @nodoc
mixin _$PaymentMethodDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentMethodDtoCopyWith<PaymentMethodDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodDtoCopyWith<$Res> {
  factory $PaymentMethodDtoCopyWith(
          PaymentMethodDto value, $Res Function(PaymentMethodDto) then) =
      _$PaymentMethodDtoCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$PaymentMethodDtoCopyWithImpl<$Res>
    implements $PaymentMethodDtoCopyWith<$Res> {
  _$PaymentMethodDtoCopyWithImpl(this._value, this._then);

  final PaymentMethodDto _value;
  // ignore: unused_field
  final $Res Function(PaymentMethodDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$PaymentMethodDtoCopyWith<$Res>
    implements $PaymentMethodDtoCopyWith<$Res> {
  factory _$PaymentMethodDtoCopyWith(
          _PaymentMethodDto value, $Res Function(_PaymentMethodDto) then) =
      __$PaymentMethodDtoCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$PaymentMethodDtoCopyWithImpl<$Res>
    extends _$PaymentMethodDtoCopyWithImpl<$Res>
    implements _$PaymentMethodDtoCopyWith<$Res> {
  __$PaymentMethodDtoCopyWithImpl(
      _PaymentMethodDto _value, $Res Function(_PaymentMethodDto) _then)
      : super(_value, (v) => _then(v as _PaymentMethodDto));

  @override
  _PaymentMethodDto get _value => super._value as _PaymentMethodDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_PaymentMethodDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentMethodDto extends _PaymentMethodDto {
  const _$_PaymentMethodDto({required this.id, required this.name}) : super._();

  factory _$_PaymentMethodDto.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentMethodDtoFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'PaymentMethodDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaymentMethodDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  _$PaymentMethodDtoCopyWith<_PaymentMethodDto> get copyWith =>
      __$PaymentMethodDtoCopyWithImpl<_PaymentMethodDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentMethodDtoToJson(this);
  }
}

abstract class _PaymentMethodDto extends PaymentMethodDto {
  const factory _PaymentMethodDto({required int id, required String name}) =
      _$_PaymentMethodDto;
  const _PaymentMethodDto._() : super._();

  factory _PaymentMethodDto.fromJson(Map<String, dynamic> json) =
      _$_PaymentMethodDto.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$PaymentMethodDtoCopyWith<_PaymentMethodDto> get copyWith =>
      throw _privateConstructorUsedError;
}
