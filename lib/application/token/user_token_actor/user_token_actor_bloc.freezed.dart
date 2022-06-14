// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_token_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserTokenActorEventTearOff {
  const _$UserTokenActorEventTearOff();

  _Create create(Token token) {
    return _Create(
      token,
    );
  }
}

/// @nodoc
const $UserTokenActorEvent = _$UserTokenActorEventTearOff();

/// @nodoc
mixin _$UserTokenActorEvent {
  Token get token => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Token token) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Token token)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Token token)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Create value)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserTokenActorEventCopyWith<UserTokenActorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTokenActorEventCopyWith<$Res> {
  factory $UserTokenActorEventCopyWith(
          UserTokenActorEvent value, $Res Function(UserTokenActorEvent) then) =
      _$UserTokenActorEventCopyWithImpl<$Res>;
  $Res call({Token token});

  $TokenCopyWith<$Res> get token;
}

/// @nodoc
class _$UserTokenActorEventCopyWithImpl<$Res>
    implements $UserTokenActorEventCopyWith<$Res> {
  _$UserTokenActorEventCopyWithImpl(this._value, this._then);

  final UserTokenActorEvent _value;
  // ignore: unused_field
  final $Res Function(UserTokenActorEvent) _then;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token,
    ));
  }

  @override
  $TokenCopyWith<$Res> get token {
    return $TokenCopyWith<$Res>(_value.token, (value) {
      return _then(_value.copyWith(token: value));
    });
  }
}

/// @nodoc
abstract class _$CreateCopyWith<$Res>
    implements $UserTokenActorEventCopyWith<$Res> {
  factory _$CreateCopyWith(_Create value, $Res Function(_Create) then) =
      __$CreateCopyWithImpl<$Res>;
  @override
  $Res call({Token token});

  @override
  $TokenCopyWith<$Res> get token;
}

/// @nodoc
class __$CreateCopyWithImpl<$Res>
    extends _$UserTokenActorEventCopyWithImpl<$Res>
    implements _$CreateCopyWith<$Res> {
  __$CreateCopyWithImpl(_Create _value, $Res Function(_Create) _then)
      : super(_value, (v) => _then(v as _Create));

  @override
  _Create get _value => super._value as _Create;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_Create(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token,
    ));
  }
}

/// @nodoc

class _$_Create implements _Create {
  const _$_Create(this.token);

  @override
  final Token token;

  @override
  String toString() {
    return 'UserTokenActorEvent.create(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Create &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$CreateCopyWith<_Create> get copyWith =>
      __$CreateCopyWithImpl<_Create>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Token token) create,
  }) {
    return create(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Token token)? create,
  }) {
    return create?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Token token)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Create value)? create,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _Create implements UserTokenActorEvent {
  const factory _Create(Token token) = _$_Create;

  @override
  Token get token;
  @override
  @JsonKey(ignore: true)
  _$CreateCopyWith<_Create> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserTokenActorStateTearOff {
  const _$UserTokenActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _CreateSuccess createSuccess() {
    return const _CreateSuccess();
  }

  _CreateFailure createFailure(TokenFailure tokenFailure) {
    return _CreateFailure(
      tokenFailure,
    );
  }
}

/// @nodoc
const $UserTokenActorState = _$UserTokenActorStateTearOff();

/// @nodoc
mixin _$UserTokenActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() createSuccess,
    required TResult Function(TokenFailure tokenFailure) createFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createSuccess,
    TResult Function(TokenFailure tokenFailure)? createFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createSuccess,
    TResult Function(TokenFailure tokenFailure)? createFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_CreateFailure value) createFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateFailure value)? createFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateFailure value)? createFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTokenActorStateCopyWith<$Res> {
  factory $UserTokenActorStateCopyWith(
          UserTokenActorState value, $Res Function(UserTokenActorState) then) =
      _$UserTokenActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserTokenActorStateCopyWithImpl<$Res>
    implements $UserTokenActorStateCopyWith<$Res> {
  _$UserTokenActorStateCopyWithImpl(this._value, this._then);

  final UserTokenActorState _value;
  // ignore: unused_field
  final $Res Function(UserTokenActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$UserTokenActorStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'UserTokenActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() createSuccess,
    required TResult Function(TokenFailure tokenFailure) createFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createSuccess,
    TResult Function(TokenFailure tokenFailure)? createFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createSuccess,
    TResult Function(TokenFailure tokenFailure)? createFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_CreateFailure value) createFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateFailure value)? createFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateFailure value)? createFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserTokenActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$CreateSuccessCopyWith<$Res> {
  factory _$CreateSuccessCopyWith(
          _CreateSuccess value, $Res Function(_CreateSuccess) then) =
      __$CreateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateSuccessCopyWithImpl<$Res>
    extends _$UserTokenActorStateCopyWithImpl<$Res>
    implements _$CreateSuccessCopyWith<$Res> {
  __$CreateSuccessCopyWithImpl(
      _CreateSuccess _value, $Res Function(_CreateSuccess) _then)
      : super(_value, (v) => _then(v as _CreateSuccess));

  @override
  _CreateSuccess get _value => super._value as _CreateSuccess;
}

/// @nodoc

class _$_CreateSuccess implements _CreateSuccess {
  const _$_CreateSuccess();

  @override
  String toString() {
    return 'UserTokenActorState.createSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CreateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() createSuccess,
    required TResult Function(TokenFailure tokenFailure) createFailure,
  }) {
    return createSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createSuccess,
    TResult Function(TokenFailure tokenFailure)? createFailure,
  }) {
    return createSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createSuccess,
    TResult Function(TokenFailure tokenFailure)? createFailure,
    required TResult orElse(),
  }) {
    if (createSuccess != null) {
      return createSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_CreateFailure value) createFailure,
  }) {
    return createSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateFailure value)? createFailure,
  }) {
    return createSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateFailure value)? createFailure,
    required TResult orElse(),
  }) {
    if (createSuccess != null) {
      return createSuccess(this);
    }
    return orElse();
  }
}

abstract class _CreateSuccess implements UserTokenActorState {
  const factory _CreateSuccess() = _$_CreateSuccess;
}

/// @nodoc
abstract class _$CreateFailureCopyWith<$Res> {
  factory _$CreateFailureCopyWith(
          _CreateFailure value, $Res Function(_CreateFailure) then) =
      __$CreateFailureCopyWithImpl<$Res>;
  $Res call({TokenFailure tokenFailure});

  $TokenFailureCopyWith<$Res> get tokenFailure;
}

/// @nodoc
class __$CreateFailureCopyWithImpl<$Res>
    extends _$UserTokenActorStateCopyWithImpl<$Res>
    implements _$CreateFailureCopyWith<$Res> {
  __$CreateFailureCopyWithImpl(
      _CreateFailure _value, $Res Function(_CreateFailure) _then)
      : super(_value, (v) => _then(v as _CreateFailure));

  @override
  _CreateFailure get _value => super._value as _CreateFailure;

  @override
  $Res call({
    Object? tokenFailure = freezed,
  }) {
    return _then(_CreateFailure(
      tokenFailure == freezed
          ? _value.tokenFailure
          : tokenFailure // ignore: cast_nullable_to_non_nullable
              as TokenFailure,
    ));
  }

  @override
  $TokenFailureCopyWith<$Res> get tokenFailure {
    return $TokenFailureCopyWith<$Res>(_value.tokenFailure, (value) {
      return _then(_value.copyWith(tokenFailure: value));
    });
  }
}

/// @nodoc

class _$_CreateFailure implements _CreateFailure {
  const _$_CreateFailure(this.tokenFailure);

  @override
  final TokenFailure tokenFailure;

  @override
  String toString() {
    return 'UserTokenActorState.createFailure(tokenFailure: $tokenFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateFailure &&
            const DeepCollectionEquality()
                .equals(other.tokenFailure, tokenFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(tokenFailure));

  @JsonKey(ignore: true)
  @override
  _$CreateFailureCopyWith<_CreateFailure> get copyWith =>
      __$CreateFailureCopyWithImpl<_CreateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() createSuccess,
    required TResult Function(TokenFailure tokenFailure) createFailure,
  }) {
    return createFailure(tokenFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createSuccess,
    TResult Function(TokenFailure tokenFailure)? createFailure,
  }) {
    return createFailure?.call(tokenFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? createSuccess,
    TResult Function(TokenFailure tokenFailure)? createFailure,
    required TResult orElse(),
  }) {
    if (createFailure != null) {
      return createFailure(tokenFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_CreateFailure value) createFailure,
  }) {
    return createFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateFailure value)? createFailure,
  }) {
    return createFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateFailure value)? createFailure,
    required TResult orElse(),
  }) {
    if (createFailure != null) {
      return createFailure(this);
    }
    return orElse();
  }
}

abstract class _CreateFailure implements UserTokenActorState {
  const factory _CreateFailure(TokenFailure tokenFailure) = _$_CreateFailure;

  TokenFailure get tokenFailure;
  @JsonKey(ignore: true)
  _$CreateFailureCopyWith<_CreateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
