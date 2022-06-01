// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'connectivity_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InternetStateTearOff {
  const _$InternetStateTearOff();

  _Connected connected(InternetType type) {
    return _Connected(
      type,
    );
  }

  _Disconnected disconnected(InternetType type) {
    return _Disconnected(
      type,
    );
  }
}

/// @nodoc
const $InternetState = _$InternetStateTearOff();

/// @nodoc
mixin _$InternetState {
  InternetType get type => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InternetType type) connected,
    required TResult Function(InternetType type) disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(InternetType type)? connected,
    TResult Function(InternetType type)? disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InternetType type)? connected,
    TResult Function(InternetType type)? disconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connected value) connected,
    required TResult Function(_Disconnected value) disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InternetStateCopyWith<InternetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetStateCopyWith<$Res> {
  factory $InternetStateCopyWith(
          InternetState value, $Res Function(InternetState) then) =
      _$InternetStateCopyWithImpl<$Res>;
  $Res call({InternetType type});

  $InternetTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$InternetStateCopyWithImpl<$Res>
    implements $InternetStateCopyWith<$Res> {
  _$InternetStateCopyWithImpl(this._value, this._then);

  final InternetState _value;
  // ignore: unused_field
  final $Res Function(InternetState) _then;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InternetType,
    ));
  }

  @override
  $InternetTypeCopyWith<$Res> get type {
    return $InternetTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc
abstract class _$ConnectedCopyWith<$Res>
    implements $InternetStateCopyWith<$Res> {
  factory _$ConnectedCopyWith(
          _Connected value, $Res Function(_Connected) then) =
      __$ConnectedCopyWithImpl<$Res>;
  @override
  $Res call({InternetType type});

  @override
  $InternetTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$ConnectedCopyWithImpl<$Res> extends _$InternetStateCopyWithImpl<$Res>
    implements _$ConnectedCopyWith<$Res> {
  __$ConnectedCopyWithImpl(_Connected _value, $Res Function(_Connected) _then)
      : super(_value, (v) => _then(v as _Connected));

  @override
  _Connected get _value => super._value as _Connected;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_Connected(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InternetType,
    ));
  }
}

/// @nodoc

class _$_Connected implements _Connected {
  const _$_Connected(this.type);

  @override
  final InternetType type;

  @override
  String toString() {
    return 'InternetState.connected(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Connected &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$ConnectedCopyWith<_Connected> get copyWith =>
      __$ConnectedCopyWithImpl<_Connected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InternetType type) connected,
    required TResult Function(InternetType type) disconnected,
  }) {
    return connected(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(InternetType type)? connected,
    TResult Function(InternetType type)? disconnected,
  }) {
    return connected?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InternetType type)? connected,
    TResult Function(InternetType type)? disconnected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connected value) connected,
    required TResult Function(_Disconnected value) disconnected,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class _Connected implements InternetState {
  const factory _Connected(InternetType type) = _$_Connected;

  @override
  InternetType get type;
  @override
  @JsonKey(ignore: true)
  _$ConnectedCopyWith<_Connected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DisconnectedCopyWith<$Res>
    implements $InternetStateCopyWith<$Res> {
  factory _$DisconnectedCopyWith(
          _Disconnected value, $Res Function(_Disconnected) then) =
      __$DisconnectedCopyWithImpl<$Res>;
  @override
  $Res call({InternetType type});

  @override
  $InternetTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$DisconnectedCopyWithImpl<$Res>
    extends _$InternetStateCopyWithImpl<$Res>
    implements _$DisconnectedCopyWith<$Res> {
  __$DisconnectedCopyWithImpl(
      _Disconnected _value, $Res Function(_Disconnected) _then)
      : super(_value, (v) => _then(v as _Disconnected));

  @override
  _Disconnected get _value => super._value as _Disconnected;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_Disconnected(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as InternetType,
    ));
  }
}

/// @nodoc

class _$_Disconnected implements _Disconnected {
  const _$_Disconnected(this.type);

  @override
  final InternetType type;

  @override
  String toString() {
    return 'InternetState.disconnected(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Disconnected &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$DisconnectedCopyWith<_Disconnected> get copyWith =>
      __$DisconnectedCopyWithImpl<_Disconnected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InternetType type) connected,
    required TResult Function(InternetType type) disconnected,
  }) {
    return disconnected(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(InternetType type)? connected,
    TResult Function(InternetType type)? disconnected,
  }) {
    return disconnected?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InternetType type)? connected,
    TResult Function(InternetType type)? disconnected,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connected value) connected,
    required TResult Function(_Disconnected value) disconnected,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class _Disconnected implements InternetState {
  const factory _Disconnected(InternetType type) = _$_Disconnected;

  @override
  InternetType get type;
  @override
  @JsonKey(ignore: true)
  _$DisconnectedCopyWith<_Disconnected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$InternetTypeTearOff {
  const _$InternetTypeTearOff();

  _Wifi wifi() {
    return const _Wifi();
  }

  _MobileData mobileData() {
    return const _MobileData();
  }

  _None none() {
    return const _None();
  }
}

/// @nodoc
const $InternetType = _$InternetTypeTearOff();

/// @nodoc
mixin _$InternetType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() wifi,
    required TResult Function() mobileData,
    required TResult Function() none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? wifi,
    TResult Function()? mobileData,
    TResult Function()? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? wifi,
    TResult Function()? mobileData,
    TResult Function()? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Wifi value) wifi,
    required TResult Function(_MobileData value) mobileData,
    required TResult Function(_None value) none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Wifi value)? wifi,
    TResult Function(_MobileData value)? mobileData,
    TResult Function(_None value)? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Wifi value)? wifi,
    TResult Function(_MobileData value)? mobileData,
    TResult Function(_None value)? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetTypeCopyWith<$Res> {
  factory $InternetTypeCopyWith(
          InternetType value, $Res Function(InternetType) then) =
      _$InternetTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$InternetTypeCopyWithImpl<$Res> implements $InternetTypeCopyWith<$Res> {
  _$InternetTypeCopyWithImpl(this._value, this._then);

  final InternetType _value;
  // ignore: unused_field
  final $Res Function(InternetType) _then;
}

/// @nodoc
abstract class _$WifiCopyWith<$Res> {
  factory _$WifiCopyWith(_Wifi value, $Res Function(_Wifi) then) =
      __$WifiCopyWithImpl<$Res>;
}

/// @nodoc
class __$WifiCopyWithImpl<$Res> extends _$InternetTypeCopyWithImpl<$Res>
    implements _$WifiCopyWith<$Res> {
  __$WifiCopyWithImpl(_Wifi _value, $Res Function(_Wifi) _then)
      : super(_value, (v) => _then(v as _Wifi));

  @override
  _Wifi get _value => super._value as _Wifi;
}

/// @nodoc

class _$_Wifi implements _Wifi {
  const _$_Wifi();

  @override
  String toString() {
    return 'InternetType.wifi()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Wifi);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() wifi,
    required TResult Function() mobileData,
    required TResult Function() none,
  }) {
    return wifi();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? wifi,
    TResult Function()? mobileData,
    TResult Function()? none,
  }) {
    return wifi?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? wifi,
    TResult Function()? mobileData,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (wifi != null) {
      return wifi();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Wifi value) wifi,
    required TResult Function(_MobileData value) mobileData,
    required TResult Function(_None value) none,
  }) {
    return wifi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Wifi value)? wifi,
    TResult Function(_MobileData value)? mobileData,
    TResult Function(_None value)? none,
  }) {
    return wifi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Wifi value)? wifi,
    TResult Function(_MobileData value)? mobileData,
    TResult Function(_None value)? none,
    required TResult orElse(),
  }) {
    if (wifi != null) {
      return wifi(this);
    }
    return orElse();
  }
}

abstract class _Wifi implements InternetType {
  const factory _Wifi() = _$_Wifi;
}

/// @nodoc
abstract class _$MobileDataCopyWith<$Res> {
  factory _$MobileDataCopyWith(
          _MobileData value, $Res Function(_MobileData) then) =
      __$MobileDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$MobileDataCopyWithImpl<$Res> extends _$InternetTypeCopyWithImpl<$Res>
    implements _$MobileDataCopyWith<$Res> {
  __$MobileDataCopyWithImpl(
      _MobileData _value, $Res Function(_MobileData) _then)
      : super(_value, (v) => _then(v as _MobileData));

  @override
  _MobileData get _value => super._value as _MobileData;
}

/// @nodoc

class _$_MobileData implements _MobileData {
  const _$_MobileData();

  @override
  String toString() {
    return 'InternetType.mobileData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _MobileData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() wifi,
    required TResult Function() mobileData,
    required TResult Function() none,
  }) {
    return mobileData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? wifi,
    TResult Function()? mobileData,
    TResult Function()? none,
  }) {
    return mobileData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? wifi,
    TResult Function()? mobileData,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (mobileData != null) {
      return mobileData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Wifi value) wifi,
    required TResult Function(_MobileData value) mobileData,
    required TResult Function(_None value) none,
  }) {
    return mobileData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Wifi value)? wifi,
    TResult Function(_MobileData value)? mobileData,
    TResult Function(_None value)? none,
  }) {
    return mobileData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Wifi value)? wifi,
    TResult Function(_MobileData value)? mobileData,
    TResult Function(_None value)? none,
    required TResult orElse(),
  }) {
    if (mobileData != null) {
      return mobileData(this);
    }
    return orElse();
  }
}

abstract class _MobileData implements InternetType {
  const factory _MobileData() = _$_MobileData;
}

/// @nodoc
abstract class _$NoneCopyWith<$Res> {
  factory _$NoneCopyWith(_None value, $Res Function(_None) then) =
      __$NoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoneCopyWithImpl<$Res> extends _$InternetTypeCopyWithImpl<$Res>
    implements _$NoneCopyWith<$Res> {
  __$NoneCopyWithImpl(_None _value, $Res Function(_None) _then)
      : super(_value, (v) => _then(v as _None));

  @override
  _None get _value => super._value as _None;
}

/// @nodoc

class _$_None implements _None {
  const _$_None();

  @override
  String toString() {
    return 'InternetType.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _None);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() wifi,
    required TResult Function() mobileData,
    required TResult Function() none,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? wifi,
    TResult Function()? mobileData,
    TResult Function()? none,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? wifi,
    TResult Function()? mobileData,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Wifi value) wifi,
    required TResult Function(_MobileData value) mobileData,
    required TResult Function(_None value) none,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Wifi value)? wifi,
    TResult Function(_MobileData value)? mobileData,
    TResult Function(_None value)? none,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Wifi value)? wifi,
    TResult Function(_MobileData value)? mobileData,
    TResult Function(_None value)? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class _None implements InternetType {
  const factory _None() = _$_None;
}
