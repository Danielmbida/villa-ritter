// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'force.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ForceTearOff {
  const _$ForceTearOff();

  _Force call({required UniqueId id, required bool open, required bool close}) {
    return _Force(
      id: id,
      open: open,
      close: close,
    );
  }
}

/// @nodoc
const $Force = _$ForceTearOff();

/// @nodoc
mixin _$Force {
  UniqueId get id => throw _privateConstructorUsedError;
  bool get open => throw _privateConstructorUsedError;
  bool get close => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForceCopyWith<Force> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForceCopyWith<$Res> {
  factory $ForceCopyWith(Force value, $Res Function(Force) then) =
      _$ForceCopyWithImpl<$Res>;
  $Res call({UniqueId id, bool open, bool close});
}

/// @nodoc
class _$ForceCopyWithImpl<$Res> implements $ForceCopyWith<$Res> {
  _$ForceCopyWithImpl(this._value, this._then);

  final Force _value;
  // ignore: unused_field
  final $Res Function(Force) _then;

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
              as UniqueId,
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
abstract class _$ForceCopyWith<$Res> implements $ForceCopyWith<$Res> {
  factory _$ForceCopyWith(_Force value, $Res Function(_Force) then) =
      __$ForceCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, bool open, bool close});
}

/// @nodoc
class __$ForceCopyWithImpl<$Res> extends _$ForceCopyWithImpl<$Res>
    implements _$ForceCopyWith<$Res> {
  __$ForceCopyWithImpl(_Force _value, $Res Function(_Force) _then)
      : super(_value, (v) => _then(v as _Force));

  @override
  _Force get _value => super._value as _Force;

  @override
  $Res call({
    Object? id = freezed,
    Object? open = freezed,
    Object? close = freezed,
  }) {
    return _then(_Force(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
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

class _$_Force implements _Force {
  const _$_Force({required this.id, required this.open, required this.close});

  @override
  final UniqueId id;
  @override
  final bool open;
  @override
  final bool close;

  @override
  String toString() {
    return 'Force(id: $id, open: $open, close: $close)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Force &&
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
  _$ForceCopyWith<_Force> get copyWith =>
      __$ForceCopyWithImpl<_Force>(this, _$identity);
}

abstract class _Force implements Force {
  const factory _Force(
      {required UniqueId id,
      required bool open,
      required bool close}) = _$_Force;

  @override
  UniqueId get id;
  @override
  bool get open;
  @override
  bool get close;
  @override
  @JsonKey(ignore: true)
  _$ForceCopyWith<_Force> get copyWith => throw _privateConstructorUsedError;
}
