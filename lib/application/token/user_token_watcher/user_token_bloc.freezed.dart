// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_token_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserTokenEventTearOff {
  const _$UserTokenEventTearOff();

  _WatcherTokenstarted watcherTokenstarted() {
    return const _WatcherTokenstarted();
  }

  _TokenReceived tokenReceived(
      Either<TokenFailure, KtList<Token>> failureOrToken) {
    return _TokenReceived(
      failureOrToken,
    );
  }
}

/// @nodoc
const $UserTokenEvent = _$UserTokenEventTearOff();

/// @nodoc
mixin _$UserTokenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watcherTokenstarted,
    required TResult Function(
            Either<TokenFailure, KtList<Token>> failureOrToken)
        tokenReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watcherTokenstarted,
    TResult Function(Either<TokenFailure, KtList<Token>> failureOrToken)?
        tokenReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watcherTokenstarted,
    TResult Function(Either<TokenFailure, KtList<Token>> failureOrToken)?
        tokenReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatcherTokenstarted value) watcherTokenstarted,
    required TResult Function(_TokenReceived value) tokenReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatcherTokenstarted value)? watcherTokenstarted,
    TResult Function(_TokenReceived value)? tokenReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatcherTokenstarted value)? watcherTokenstarted,
    TResult Function(_TokenReceived value)? tokenReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTokenEventCopyWith<$Res> {
  factory $UserTokenEventCopyWith(
          UserTokenEvent value, $Res Function(UserTokenEvent) then) =
      _$UserTokenEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserTokenEventCopyWithImpl<$Res>
    implements $UserTokenEventCopyWith<$Res> {
  _$UserTokenEventCopyWithImpl(this._value, this._then);

  final UserTokenEvent _value;
  // ignore: unused_field
  final $Res Function(UserTokenEvent) _then;
}

/// @nodoc
abstract class _$WatcherTokenstartedCopyWith<$Res> {
  factory _$WatcherTokenstartedCopyWith(_WatcherTokenstarted value,
          $Res Function(_WatcherTokenstarted) then) =
      __$WatcherTokenstartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatcherTokenstartedCopyWithImpl<$Res>
    extends _$UserTokenEventCopyWithImpl<$Res>
    implements _$WatcherTokenstartedCopyWith<$Res> {
  __$WatcherTokenstartedCopyWithImpl(
      _WatcherTokenstarted _value, $Res Function(_WatcherTokenstarted) _then)
      : super(_value, (v) => _then(v as _WatcherTokenstarted));

  @override
  _WatcherTokenstarted get _value => super._value as _WatcherTokenstarted;
}

/// @nodoc

class _$_WatcherTokenstarted implements _WatcherTokenstarted {
  const _$_WatcherTokenstarted();

  @override
  String toString() {
    return 'UserTokenEvent.watcherTokenstarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WatcherTokenstarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watcherTokenstarted,
    required TResult Function(
            Either<TokenFailure, KtList<Token>> failureOrToken)
        tokenReceived,
  }) {
    return watcherTokenstarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watcherTokenstarted,
    TResult Function(Either<TokenFailure, KtList<Token>> failureOrToken)?
        tokenReceived,
  }) {
    return watcherTokenstarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watcherTokenstarted,
    TResult Function(Either<TokenFailure, KtList<Token>> failureOrToken)?
        tokenReceived,
    required TResult orElse(),
  }) {
    if (watcherTokenstarted != null) {
      return watcherTokenstarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatcherTokenstarted value) watcherTokenstarted,
    required TResult Function(_TokenReceived value) tokenReceived,
  }) {
    return watcherTokenstarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatcherTokenstarted value)? watcherTokenstarted,
    TResult Function(_TokenReceived value)? tokenReceived,
  }) {
    return watcherTokenstarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatcherTokenstarted value)? watcherTokenstarted,
    TResult Function(_TokenReceived value)? tokenReceived,
    required TResult orElse(),
  }) {
    if (watcherTokenstarted != null) {
      return watcherTokenstarted(this);
    }
    return orElse();
  }
}

abstract class _WatcherTokenstarted implements UserTokenEvent {
  const factory _WatcherTokenstarted() = _$_WatcherTokenstarted;
}

/// @nodoc
abstract class _$TokenReceivedCopyWith<$Res> {
  factory _$TokenReceivedCopyWith(
          _TokenReceived value, $Res Function(_TokenReceived) then) =
      __$TokenReceivedCopyWithImpl<$Res>;
  $Res call({Either<TokenFailure, KtList<Token>> failureOrToken});
}

/// @nodoc
class __$TokenReceivedCopyWithImpl<$Res>
    extends _$UserTokenEventCopyWithImpl<$Res>
    implements _$TokenReceivedCopyWith<$Res> {
  __$TokenReceivedCopyWithImpl(
      _TokenReceived _value, $Res Function(_TokenReceived) _then)
      : super(_value, (v) => _then(v as _TokenReceived));

  @override
  _TokenReceived get _value => super._value as _TokenReceived;

  @override
  $Res call({
    Object? failureOrToken = freezed,
  }) {
    return _then(_TokenReceived(
      failureOrToken == freezed
          ? _value.failureOrToken
          : failureOrToken // ignore: cast_nullable_to_non_nullable
              as Either<TokenFailure, KtList<Token>>,
    ));
  }
}

/// @nodoc

class _$_TokenReceived implements _TokenReceived {
  const _$_TokenReceived(this.failureOrToken);

  @override
  final Either<TokenFailure, KtList<Token>> failureOrToken;

  @override
  String toString() {
    return 'UserTokenEvent.tokenReceived(failureOrToken: $failureOrToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TokenReceived &&
            const DeepCollectionEquality()
                .equals(other.failureOrToken, failureOrToken));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrToken));

  @JsonKey(ignore: true)
  @override
  _$TokenReceivedCopyWith<_TokenReceived> get copyWith =>
      __$TokenReceivedCopyWithImpl<_TokenReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watcherTokenstarted,
    required TResult Function(
            Either<TokenFailure, KtList<Token>> failureOrToken)
        tokenReceived,
  }) {
    return tokenReceived(failureOrToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watcherTokenstarted,
    TResult Function(Either<TokenFailure, KtList<Token>> failureOrToken)?
        tokenReceived,
  }) {
    return tokenReceived?.call(failureOrToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watcherTokenstarted,
    TResult Function(Either<TokenFailure, KtList<Token>> failureOrToken)?
        tokenReceived,
    required TResult orElse(),
  }) {
    if (tokenReceived != null) {
      return tokenReceived(failureOrToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatcherTokenstarted value) watcherTokenstarted,
    required TResult Function(_TokenReceived value) tokenReceived,
  }) {
    return tokenReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatcherTokenstarted value)? watcherTokenstarted,
    TResult Function(_TokenReceived value)? tokenReceived,
  }) {
    return tokenReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatcherTokenstarted value)? watcherTokenstarted,
    TResult Function(_TokenReceived value)? tokenReceived,
    required TResult orElse(),
  }) {
    if (tokenReceived != null) {
      return tokenReceived(this);
    }
    return orElse();
  }
}

abstract class _TokenReceived implements UserTokenEvent {
  const factory _TokenReceived(
      Either<TokenFailure, KtList<Token>> failureOrToken) = _$_TokenReceived;

  Either<TokenFailure, KtList<Token>> get failureOrToken;
  @JsonKey(ignore: true)
  _$TokenReceivedCopyWith<_TokenReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserTokenStateTearOff {
  const _$UserTokenStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadSucces loadSucess(KtList<Token> tokens) {
    return _LoadSucces(
      tokens,
    );
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadInFailure loadInFailure(TokenFailure tokenFailure) {
    return _LoadInFailure(
      tokenFailure,
    );
  }
}

/// @nodoc
const $UserTokenState = _$UserTokenStateTearOff();

/// @nodoc
mixin _$UserTokenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(KtList<Token> tokens) loadSucess,
    required TResult Function() loadInProgress,
    required TResult Function(TokenFailure tokenFailure) loadInFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(KtList<Token> tokens)? loadSucess,
    TResult Function()? loadInProgress,
    TResult Function(TokenFailure tokenFailure)? loadInFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(KtList<Token> tokens)? loadSucess,
    TResult Function()? loadInProgress,
    TResult Function(TokenFailure tokenFailure)? loadInFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadSucces value) loadSucess,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadInFailure value) loadInFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSucces value)? loadSucess,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadInFailure value)? loadInFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSucces value)? loadSucess,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadInFailure value)? loadInFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTokenStateCopyWith<$Res> {
  factory $UserTokenStateCopyWith(
          UserTokenState value, $Res Function(UserTokenState) then) =
      _$UserTokenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserTokenStateCopyWithImpl<$Res>
    implements $UserTokenStateCopyWith<$Res> {
  _$UserTokenStateCopyWithImpl(this._value, this._then);

  final UserTokenState _value;
  // ignore: unused_field
  final $Res Function(UserTokenState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$UserTokenStateCopyWithImpl<$Res>
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
    return 'UserTokenState.initial()';
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
    required TResult Function(KtList<Token> tokens) loadSucess,
    required TResult Function() loadInProgress,
    required TResult Function(TokenFailure tokenFailure) loadInFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(KtList<Token> tokens)? loadSucess,
    TResult Function()? loadInProgress,
    TResult Function(TokenFailure tokenFailure)? loadInFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(KtList<Token> tokens)? loadSucess,
    TResult Function()? loadInProgress,
    TResult Function(TokenFailure tokenFailure)? loadInFailure,
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
    required TResult Function(_LoadSucces value) loadSucess,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadInFailure value) loadInFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSucces value)? loadSucess,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadInFailure value)? loadInFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSucces value)? loadSucess,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadInFailure value)? loadInFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserTokenState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadSuccesCopyWith<$Res> {
  factory _$LoadSuccesCopyWith(
          _LoadSucces value, $Res Function(_LoadSucces) then) =
      __$LoadSuccesCopyWithImpl<$Res>;
  $Res call({KtList<Token> tokens});
}

/// @nodoc
class __$LoadSuccesCopyWithImpl<$Res> extends _$UserTokenStateCopyWithImpl<$Res>
    implements _$LoadSuccesCopyWith<$Res> {
  __$LoadSuccesCopyWithImpl(
      _LoadSucces _value, $Res Function(_LoadSucces) _then)
      : super(_value, (v) => _then(v as _LoadSucces));

  @override
  _LoadSucces get _value => super._value as _LoadSucces;

  @override
  $Res call({
    Object? tokens = freezed,
  }) {
    return _then(_LoadSucces(
      tokens == freezed
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as KtList<Token>,
    ));
  }
}

/// @nodoc

class _$_LoadSucces implements _LoadSucces {
  const _$_LoadSucces(this.tokens);

  @override
  final KtList<Token> tokens;

  @override
  String toString() {
    return 'UserTokenState.loadSucess(tokens: $tokens)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadSucces &&
            const DeepCollectionEquality().equals(other.tokens, tokens));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tokens));

  @JsonKey(ignore: true)
  @override
  _$LoadSuccesCopyWith<_LoadSucces> get copyWith =>
      __$LoadSuccesCopyWithImpl<_LoadSucces>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(KtList<Token> tokens) loadSucess,
    required TResult Function() loadInProgress,
    required TResult Function(TokenFailure tokenFailure) loadInFailure,
  }) {
    return loadSucess(tokens);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(KtList<Token> tokens)? loadSucess,
    TResult Function()? loadInProgress,
    TResult Function(TokenFailure tokenFailure)? loadInFailure,
  }) {
    return loadSucess?.call(tokens);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(KtList<Token> tokens)? loadSucess,
    TResult Function()? loadInProgress,
    TResult Function(TokenFailure tokenFailure)? loadInFailure,
    required TResult orElse(),
  }) {
    if (loadSucess != null) {
      return loadSucess(tokens);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadSucces value) loadSucess,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadInFailure value) loadInFailure,
  }) {
    return loadSucess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSucces value)? loadSucess,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadInFailure value)? loadInFailure,
  }) {
    return loadSucess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSucces value)? loadSucess,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadInFailure value)? loadInFailure,
    required TResult orElse(),
  }) {
    if (loadSucess != null) {
      return loadSucess(this);
    }
    return orElse();
  }
}

abstract class _LoadSucces implements UserTokenState {
  const factory _LoadSucces(KtList<Token> tokens) = _$_LoadSucces;

  KtList<Token> get tokens;
  @JsonKey(ignore: true)
  _$LoadSuccesCopyWith<_LoadSucces> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$UserTokenStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'UserTokenState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(KtList<Token> tokens) loadSucess,
    required TResult Function() loadInProgress,
    required TResult Function(TokenFailure tokenFailure) loadInFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(KtList<Token> tokens)? loadSucess,
    TResult Function()? loadInProgress,
    TResult Function(TokenFailure tokenFailure)? loadInFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(KtList<Token> tokens)? loadSucess,
    TResult Function()? loadInProgress,
    TResult Function(TokenFailure tokenFailure)? loadInFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadSucces value) loadSucess,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadInFailure value) loadInFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSucces value)? loadSucess,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadInFailure value)? loadInFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSucces value)? loadSucess,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadInFailure value)? loadInFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements UserTokenState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadInFailureCopyWith<$Res> {
  factory _$LoadInFailureCopyWith(
          _LoadInFailure value, $Res Function(_LoadInFailure) then) =
      __$LoadInFailureCopyWithImpl<$Res>;
  $Res call({TokenFailure tokenFailure});

  $TokenFailureCopyWith<$Res> get tokenFailure;
}

/// @nodoc
class __$LoadInFailureCopyWithImpl<$Res>
    extends _$UserTokenStateCopyWithImpl<$Res>
    implements _$LoadInFailureCopyWith<$Res> {
  __$LoadInFailureCopyWithImpl(
      _LoadInFailure _value, $Res Function(_LoadInFailure) _then)
      : super(_value, (v) => _then(v as _LoadInFailure));

  @override
  _LoadInFailure get _value => super._value as _LoadInFailure;

  @override
  $Res call({
    Object? tokenFailure = freezed,
  }) {
    return _then(_LoadInFailure(
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

class _$_LoadInFailure implements _LoadInFailure {
  const _$_LoadInFailure(this.tokenFailure);

  @override
  final TokenFailure tokenFailure;

  @override
  String toString() {
    return 'UserTokenState.loadInFailure(tokenFailure: $tokenFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadInFailure &&
            const DeepCollectionEquality()
                .equals(other.tokenFailure, tokenFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(tokenFailure));

  @JsonKey(ignore: true)
  @override
  _$LoadInFailureCopyWith<_LoadInFailure> get copyWith =>
      __$LoadInFailureCopyWithImpl<_LoadInFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(KtList<Token> tokens) loadSucess,
    required TResult Function() loadInProgress,
    required TResult Function(TokenFailure tokenFailure) loadInFailure,
  }) {
    return loadInFailure(tokenFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(KtList<Token> tokens)? loadSucess,
    TResult Function()? loadInProgress,
    TResult Function(TokenFailure tokenFailure)? loadInFailure,
  }) {
    return loadInFailure?.call(tokenFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(KtList<Token> tokens)? loadSucess,
    TResult Function()? loadInProgress,
    TResult Function(TokenFailure tokenFailure)? loadInFailure,
    required TResult orElse(),
  }) {
    if (loadInFailure != null) {
      return loadInFailure(tokenFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadSucces value) loadSucess,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadInFailure value) loadInFailure,
  }) {
    return loadInFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSucces value)? loadSucess,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadInFailure value)? loadInFailure,
  }) {
    return loadInFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSucces value)? loadSucess,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadInFailure value)? loadInFailure,
    required TResult orElse(),
  }) {
    if (loadInFailure != null) {
      return loadInFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadInFailure implements UserTokenState {
  const factory _LoadInFailure(TokenFailure tokenFailure) = _$_LoadInFailure;

  TokenFailure get tokenFailure;
  @JsonKey(ignore: true)
  _$LoadInFailureCopyWith<_LoadInFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
