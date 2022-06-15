// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'force_hour_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForceHourDto _$ForceHourDtoFromJson(Map<String, dynamic> json) {
  return _ForceHourDto.fromJson(json);
}

/// @nodoc
class _$ForceHourDtoTearOff {
  const _$ForceHourDtoTearOff();

  _ForceHourDto call(
      {@JsonKey(ignore: true) String? id,
      required bool open,
      required bool close}) {
    return _ForceHourDto(
      id: id,
      open: open,
      close: close,
    );
  }

  ForceHourDto fromJson(Map<String, Object?> json) {
    return ForceHourDto.fromJson(json);
  }
}

/// @nodoc
const $ForceHourDto = _$ForceHourDtoTearOff();

/// @nodoc
mixin _$ForceHourDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  bool get open => throw _privateConstructorUsedError;
  bool get close => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForceHourDtoCopyWith<ForceHourDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForceHourDtoCopyWith<$Res> {
  factory $ForceHourDtoCopyWith(
          ForceHourDto value, $Res Function(ForceHourDto) then) =
      _$ForceHourDtoCopyWithImpl<$Res>;
  $Res call({@JsonKey(ignore: true) String? id, bool open, bool close});
}

/// @nodoc
class _$ForceHourDtoCopyWithImpl<$Res> implements $ForceHourDtoCopyWith<$Res> {
  _$ForceHourDtoCopyWithImpl(this._value, this._then);

  final ForceHourDto _value;
  // ignore: unused_field
  final $Res Function(ForceHourDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? open = freezed,
    Object? close = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      open: open == freezed
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as bool,
      close: close == freezed
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ForceHourDtoCopyWith<$Res>
    implements $ForceHourDtoCopyWith<$Res> {
  factory _$ForceHourDtoCopyWith(
          _ForceHourDto value, $Res Function(_ForceHourDto) then) =
      __$ForceHourDtoCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(ignore: true) String? id, bool open, bool close});
}

/// @nodoc
class __$ForceHourDtoCopyWithImpl<$Res> extends _$ForceHourDtoCopyWithImpl<$Res>
    implements _$ForceHourDtoCopyWith<$Res> {
  __$ForceHourDtoCopyWithImpl(
      _ForceHourDto _value, $Res Function(_ForceHourDto) _then)
      : super(_value, (v) => _then(v as _ForceHourDto));

  @override
  _ForceHourDto get _value => super._value as _ForceHourDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? open = freezed,
    Object? close = freezed,
  }) {
    return _then(_ForceHourDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      open: open == freezed
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as bool,
      close: close == freezed
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ForceHourDto extends _ForceHourDto {
  const _$_ForceHourDto(
      {@JsonKey(ignore: true) this.id, required this.open, required this.close})
      : super._();

  factory _$_ForceHourDto.fromJson(Map<String, dynamic> json) =>
      _$$_ForceHourDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final bool open;
  @override
  final bool close;

  @override
  String toString() {
    return 'ForceHourDto(id: $id, open: $open, close: $close)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ForceHourDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.open, open) &&
            const DeepCollectionEquality().equals(other.close, close));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(open),
      const DeepCollectionEquality().hash(close));

  @JsonKey(ignore: true)
  @override
  _$ForceHourDtoCopyWith<_ForceHourDto> get copyWith =>
      __$ForceHourDtoCopyWithImpl<_ForceHourDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForceHourDtoToJson(this);
  }
}

abstract class _ForceHourDto extends ForceHourDto {
  const factory _ForceHourDto(
      {@JsonKey(ignore: true) String? id,
      required bool open,
      required bool close}) = _$_ForceHourDto;
  const _ForceHourDto._() : super._();

  factory _ForceHourDto.fromJson(Map<String, dynamic> json) =
      _$_ForceHourDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  bool get open;
  @override
  bool get close;
  @override
  @JsonKey(ignore: true)
  _$ForceHourDtoCopyWith<_ForceHourDto> get copyWith =>
      throw _privateConstructorUsedError;
}
