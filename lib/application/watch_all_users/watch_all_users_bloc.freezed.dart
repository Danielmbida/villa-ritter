// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'watch_all_users_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WatchAllUsersEventTearOff {
  const _$WatchAllUsersEventTearOff();

  _WatchAllUsersStarted watchAllUsersStarted() {
    return const _WatchAllUsersStarted();
  }

  _UsersReceived usersReceived(
      Either<UserFailure, KtList<User>> failureOrUsers) {
    return _UsersReceived(
      failureOrUsers,
    );
  }
}

/// @nodoc
const $WatchAllUsersEvent = _$WatchAllUsersEventTearOff();

/// @nodoc
mixin _$WatchAllUsersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllUsersStarted,
    required TResult Function(Either<UserFailure, KtList<User>> failureOrUsers)
        usersReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllUsersStarted,
    TResult Function(Either<UserFailure, KtList<User>> failureOrUsers)?
        usersReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllUsersStarted,
    TResult Function(Either<UserFailure, KtList<User>> failureOrUsers)?
        usersReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllUsersStarted value) watchAllUsersStarted,
    required TResult Function(_UsersReceived value) usersReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllUsersStarted value)? watchAllUsersStarted,
    TResult Function(_UsersReceived value)? usersReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllUsersStarted value)? watchAllUsersStarted,
    TResult Function(_UsersReceived value)? usersReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchAllUsersEventCopyWith<$Res> {
  factory $WatchAllUsersEventCopyWith(
          WatchAllUsersEvent value, $Res Function(WatchAllUsersEvent) then) =
      _$WatchAllUsersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchAllUsersEventCopyWithImpl<$Res>
    implements $WatchAllUsersEventCopyWith<$Res> {
  _$WatchAllUsersEventCopyWithImpl(this._value, this._then);

  final WatchAllUsersEvent _value;
  // ignore: unused_field
  final $Res Function(WatchAllUsersEvent) _then;
}

/// @nodoc
abstract class _$WatchAllUsersStartedCopyWith<$Res> {
  factory _$WatchAllUsersStartedCopyWith(_WatchAllUsersStarted value,
          $Res Function(_WatchAllUsersStarted) then) =
      __$WatchAllUsersStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllUsersStartedCopyWithImpl<$Res>
    extends _$WatchAllUsersEventCopyWithImpl<$Res>
    implements _$WatchAllUsersStartedCopyWith<$Res> {
  __$WatchAllUsersStartedCopyWithImpl(
      _WatchAllUsersStarted _value, $Res Function(_WatchAllUsersStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllUsersStarted));

  @override
  _WatchAllUsersStarted get _value => super._value as _WatchAllUsersStarted;
}

/// @nodoc

class _$_WatchAllUsersStarted implements _WatchAllUsersStarted {
  const _$_WatchAllUsersStarted();

  @override
  String toString() {
    return 'WatchAllUsersEvent.watchAllUsersStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WatchAllUsersStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllUsersStarted,
    required TResult Function(Either<UserFailure, KtList<User>> failureOrUsers)
        usersReceived,
  }) {
    return watchAllUsersStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllUsersStarted,
    TResult Function(Either<UserFailure, KtList<User>> failureOrUsers)?
        usersReceived,
  }) {
    return watchAllUsersStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllUsersStarted,
    TResult Function(Either<UserFailure, KtList<User>> failureOrUsers)?
        usersReceived,
    required TResult orElse(),
  }) {
    if (watchAllUsersStarted != null) {
      return watchAllUsersStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllUsersStarted value) watchAllUsersStarted,
    required TResult Function(_UsersReceived value) usersReceived,
  }) {
    return watchAllUsersStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllUsersStarted value)? watchAllUsersStarted,
    TResult Function(_UsersReceived value)? usersReceived,
  }) {
    return watchAllUsersStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllUsersStarted value)? watchAllUsersStarted,
    TResult Function(_UsersReceived value)? usersReceived,
    required TResult orElse(),
  }) {
    if (watchAllUsersStarted != null) {
      return watchAllUsersStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllUsersStarted implements WatchAllUsersEvent {
  const factory _WatchAllUsersStarted() = _$_WatchAllUsersStarted;
}

/// @nodoc
abstract class _$UsersReceivedCopyWith<$Res> {
  factory _$UsersReceivedCopyWith(
          _UsersReceived value, $Res Function(_UsersReceived) then) =
      __$UsersReceivedCopyWithImpl<$Res>;
  $Res call({Either<UserFailure, KtList<User>> failureOrUsers});
}

/// @nodoc
class __$UsersReceivedCopyWithImpl<$Res>
    extends _$WatchAllUsersEventCopyWithImpl<$Res>
    implements _$UsersReceivedCopyWith<$Res> {
  __$UsersReceivedCopyWithImpl(
      _UsersReceived _value, $Res Function(_UsersReceived) _then)
      : super(_value, (v) => _then(v as _UsersReceived));

  @override
  _UsersReceived get _value => super._value as _UsersReceived;

  @override
  $Res call({
    Object? failureOrUsers = freezed,
  }) {
    return _then(_UsersReceived(
      failureOrUsers == freezed
          ? _value.failureOrUsers
          : failureOrUsers // ignore: cast_nullable_to_non_nullable
              as Either<UserFailure, KtList<User>>,
    ));
  }
}

/// @nodoc

class _$_UsersReceived implements _UsersReceived {
  const _$_UsersReceived(this.failureOrUsers);

  @override
  final Either<UserFailure, KtList<User>> failureOrUsers;

  @override
  String toString() {
    return 'WatchAllUsersEvent.usersReceived(failureOrUsers: $failureOrUsers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UsersReceived &&
            const DeepCollectionEquality()
                .equals(other.failureOrUsers, failureOrUsers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrUsers));

  @JsonKey(ignore: true)
  @override
  _$UsersReceivedCopyWith<_UsersReceived> get copyWith =>
      __$UsersReceivedCopyWithImpl<_UsersReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllUsersStarted,
    required TResult Function(Either<UserFailure, KtList<User>> failureOrUsers)
        usersReceived,
  }) {
    return usersReceived(failureOrUsers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllUsersStarted,
    TResult Function(Either<UserFailure, KtList<User>> failureOrUsers)?
        usersReceived,
  }) {
    return usersReceived?.call(failureOrUsers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllUsersStarted,
    TResult Function(Either<UserFailure, KtList<User>> failureOrUsers)?
        usersReceived,
    required TResult orElse(),
  }) {
    if (usersReceived != null) {
      return usersReceived(failureOrUsers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllUsersStarted value) watchAllUsersStarted,
    required TResult Function(_UsersReceived value) usersReceived,
  }) {
    return usersReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllUsersStarted value)? watchAllUsersStarted,
    TResult Function(_UsersReceived value)? usersReceived,
  }) {
    return usersReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllUsersStarted value)? watchAllUsersStarted,
    TResult Function(_UsersReceived value)? usersReceived,
    required TResult orElse(),
  }) {
    if (usersReceived != null) {
      return usersReceived(this);
    }
    return orElse();
  }
}

abstract class _UsersReceived implements WatchAllUsersEvent {
  const factory _UsersReceived(
      Either<UserFailure, KtList<User>> failureOrUsers) = _$_UsersReceived;

  Either<UserFailure, KtList<User>> get failureOrUsers;
  @JsonKey(ignore: true)
  _$UsersReceivedCopyWith<_UsersReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$WatchAllUsersStateTearOff {
  const _$WatchAllUsersStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadFailure loadFailure(UserFailure rideFailure) {
    return _LoadFailure(
      rideFailure,
    );
  }

  _LoadSuccess loadSuccess(KtList<User> users) {
    return _LoadSuccess(
      users,
    );
  }
}

/// @nodoc
const $WatchAllUsersState = _$WatchAllUsersStateTearOff();

/// @nodoc
mixin _$WatchAllUsersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(UserFailure rideFailure) loadFailure,
    required TResult Function(KtList<User> users) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(UserFailure rideFailure)? loadFailure,
    TResult Function(KtList<User> users)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(UserFailure rideFailure)? loadFailure,
    TResult Function(KtList<User> users)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchAllUsersStateCopyWith<$Res> {
  factory $WatchAllUsersStateCopyWith(
          WatchAllUsersState value, $Res Function(WatchAllUsersState) then) =
      _$WatchAllUsersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchAllUsersStateCopyWithImpl<$Res>
    implements $WatchAllUsersStateCopyWith<$Res> {
  _$WatchAllUsersStateCopyWithImpl(this._value, this._then);

  final WatchAllUsersState _value;
  // ignore: unused_field
  final $Res Function(WatchAllUsersState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$WatchAllUsersStateCopyWithImpl<$Res>
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
    return 'WatchAllUsersState.initial()';
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
    required TResult Function() loadInProgress,
    required TResult Function(UserFailure rideFailure) loadFailure,
    required TResult Function(KtList<User> users) loadSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(UserFailure rideFailure)? loadFailure,
    TResult Function(KtList<User> users)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(UserFailure rideFailure)? loadFailure,
    TResult Function(KtList<User> users)? loadSuccess,
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
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WatchAllUsersState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$WatchAllUsersStateCopyWithImpl<$Res>
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
    return 'WatchAllUsersState.loadInProgress()';
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
    required TResult Function() loadInProgress,
    required TResult Function(UserFailure rideFailure) loadFailure,
    required TResult Function(KtList<User> users) loadSuccess,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(UserFailure rideFailure)? loadFailure,
    TResult Function(KtList<User> users)? loadSuccess,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(UserFailure rideFailure)? loadFailure,
    TResult Function(KtList<User> users)? loadSuccess,
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
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements WatchAllUsersState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({UserFailure rideFailure});

  $UserFailureCopyWith<$Res> get rideFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$WatchAllUsersStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? rideFailure = freezed,
  }) {
    return _then(_LoadFailure(
      rideFailure == freezed
          ? _value.rideFailure
          : rideFailure // ignore: cast_nullable_to_non_nullable
              as UserFailure,
    ));
  }

  @override
  $UserFailureCopyWith<$Res> get rideFailure {
    return $UserFailureCopyWith<$Res>(_value.rideFailure, (value) {
      return _then(_value.copyWith(rideFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.rideFailure);

  @override
  final UserFailure rideFailure;

  @override
  String toString() {
    return 'WatchAllUsersState.loadFailure(rideFailure: $rideFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadFailure &&
            const DeepCollectionEquality()
                .equals(other.rideFailure, rideFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(rideFailure));

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(UserFailure rideFailure) loadFailure,
    required TResult Function(KtList<User> users) loadSuccess,
  }) {
    return loadFailure(rideFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(UserFailure rideFailure)? loadFailure,
    TResult Function(KtList<User> users)? loadSuccess,
  }) {
    return loadFailure?.call(rideFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(UserFailure rideFailure)? loadFailure,
    TResult Function(KtList<User> users)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(rideFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements WatchAllUsersState {
  const factory _LoadFailure(UserFailure rideFailure) = _$_LoadFailure;

  UserFailure get rideFailure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<User> users});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$WatchAllUsersStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(_LoadSuccess(
      users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as KtList<User>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.users);

  @override
  final KtList<User> users;

  @override
  String toString() {
    return 'WatchAllUsersState.loadSuccess(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadSuccess &&
            const DeepCollectionEquality().equals(other.users, users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(users));

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(UserFailure rideFailure) loadFailure,
    required TResult Function(KtList<User> users) loadSuccess,
  }) {
    return loadSuccess(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(UserFailure rideFailure)? loadFailure,
    TResult Function(KtList<User> users)? loadSuccess,
  }) {
    return loadSuccess?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(UserFailure rideFailure)? loadFailure,
    TResult Function(KtList<User> users)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements WatchAllUsersState {
  const factory _LoadSuccess(KtList<User> users) = _$_LoadSuccess;

  KtList<User> get users;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
