// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'token_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenDto _$TokenDtoFromJson(Map<String, dynamic> json) {
  return _TokenDto.fromJson(json);
}

/// @nodoc
class _$TokenDtoTearOff {
  const _$TokenDtoTearOff();

  _TokenDto call({@JsonKey(ignore: true) String? id, required String token}) {
    return _TokenDto(
      id: id,
      token: token,
    );
  }

  TokenDto fromJson(Map<String, Object?> json) {
    return TokenDto.fromJson(json);
  }
}

/// @nodoc
const $TokenDto = _$TokenDtoTearOff();

/// @nodoc
mixin _$TokenDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenDtoCopyWith<TokenDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenDtoCopyWith<$Res> {
  factory $TokenDtoCopyWith(TokenDto value, $Res Function(TokenDto) then) =
      _$TokenDtoCopyWithImpl<$Res>;
  $Res call({@JsonKey(ignore: true) String? id, String token});
}

/// @nodoc
class _$TokenDtoCopyWithImpl<$Res> implements $TokenDtoCopyWith<$Res> {
  _$TokenDtoCopyWithImpl(this._value, this._then);

  final TokenDto _value;
  // ignore: unused_field
  final $Res Function(TokenDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TokenDtoCopyWith<$Res> implements $TokenDtoCopyWith<$Res> {
  factory _$TokenDtoCopyWith(_TokenDto value, $Res Function(_TokenDto) then) =
      __$TokenDtoCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(ignore: true) String? id, String token});
}

/// @nodoc
class __$TokenDtoCopyWithImpl<$Res> extends _$TokenDtoCopyWithImpl<$Res>
    implements _$TokenDtoCopyWith<$Res> {
  __$TokenDtoCopyWithImpl(_TokenDto _value, $Res Function(_TokenDto) _then)
      : super(_value, (v) => _then(v as _TokenDto));

  @override
  _TokenDto get _value => super._value as _TokenDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? token = freezed,
  }) {
    return _then(_TokenDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenDto extends _TokenDto {
  const _$_TokenDto({@JsonKey(ignore: true) this.id, required this.token})
      : super._();

  factory _$_TokenDto.fromJson(Map<String, dynamic> json) =>
      _$$_TokenDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String token;

  @override
  String toString() {
    return 'TokenDto(id: $id, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TokenDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$TokenDtoCopyWith<_TokenDto> get copyWith =>
      __$TokenDtoCopyWithImpl<_TokenDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenDtoToJson(this);
  }
}

abstract class _TokenDto extends TokenDto {
  const factory _TokenDto(
      {@JsonKey(ignore: true) String? id, required String token}) = _$_TokenDto;
  const _TokenDto._() : super._();

  factory _TokenDto.fromJson(Map<String, dynamic> json) = _$_TokenDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$TokenDtoCopyWith<_TokenDto> get copyWith =>
      throw _privateConstructorUsedError;
}
