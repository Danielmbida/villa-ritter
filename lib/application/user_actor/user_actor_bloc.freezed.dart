// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserActorEventTearOff {
  const _$UserActorEventTearOff();

  _Present present(User user) {
    return _Present(
      user,
    );
  }

  _Left left(User user) {
    return _Left(
      user,
    );
  }

  _ChangeVillaHour changeVillaHour(User user) {
    return _ChangeVillaHour(
      user,
    );
  }
}

/// @nodoc
const $UserActorEvent = _$UserActorEventTearOff();

/// @nodoc
mixin _$UserActorEvent {
  User get user => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) present,
    required TResult Function(User user) left,
    required TResult Function(User user) changeVillaHour,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? present,
    TResult Function(User user)? left,
    TResult Function(User user)? changeVillaHour,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? present,
    TResult Function(User user)? left,
    TResult Function(User user)? changeVillaHour,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Present value) present,
    required TResult Function(_Left value) left,
    required TResult Function(_ChangeVillaHour value) changeVillaHour,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Present value)? present,
    TResult Function(_Left value)? left,
    TResult Function(_ChangeVillaHour value)? changeVillaHour,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Present value)? present,
    TResult Function(_Left value)? left,
    TResult Function(_ChangeVillaHour value)? changeVillaHour,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserActorEventCopyWith<UserActorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserActorEventCopyWith<$Res> {
  factory $UserActorEventCopyWith(
          UserActorEvent value, $Res Function(UserActorEvent) then) =
      _$UserActorEventCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserActorEventCopyWithImpl<$Res>
    implements $UserActorEventCopyWith<$Res> {
  _$UserActorEventCopyWithImpl(this._value, this._then);

  final UserActorEvent _value;
  // ignore: unused_field
  final $Res Function(UserActorEvent) _then;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$PresentCopyWith<$Res>
    implements $UserActorEventCopyWith<$Res> {
  factory _$PresentCopyWith(_Present value, $Res Function(_Present) then) =
      __$PresentCopyWithImpl<$Res>;
  @override
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$PresentCopyWithImpl<$Res> extends _$UserActorEventCopyWithImpl<$Res>
    implements _$PresentCopyWith<$Res> {
  __$PresentCopyWithImpl(_Present _value, $Res Function(_Present) _then)
      : super(_value, (v) => _then(v as _Present));

  @override
  _Present get _value => super._value as _Present;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_Present(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_Present implements _Present {
  const _$_Present(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'UserActorEvent.present(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Present &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$PresentCopyWith<_Present> get copyWith =>
      __$PresentCopyWithImpl<_Present>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) present,
    required TResult Function(User user) left,
    required TResult Function(User user) changeVillaHour,
  }) {
    return present(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? present,
    TResult Function(User user)? left,
    TResult Function(User user)? changeVillaHour,
  }) {
    return present?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? present,
    TResult Function(User user)? left,
    TResult Function(User user)? changeVillaHour,
    required TResult orElse(),
  }) {
    if (present != null) {
      return present(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Present value) present,
    required TResult Function(_Left value) left,
    required TResult Function(_ChangeVillaHour value) changeVillaHour,
  }) {
    return present(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Present value)? present,
    TResult Function(_Left value)? left,
    TResult Function(_ChangeVillaHour value)? changeVillaHour,
  }) {
    return present?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Present value)? present,
    TResult Function(_Left value)? left,
    TResult Function(_ChangeVillaHour value)? changeVillaHour,
    required TResult orElse(),
  }) {
    if (present != null) {
      return present(this);
    }
    return orElse();
  }
}

abstract class _Present implements UserActorEvent {
  const factory _Present(User user) = _$_Present;

  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$PresentCopyWith<_Present> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LeftCopyWith<$Res> implements $UserActorEventCopyWith<$Res> {
  factory _$LeftCopyWith(_Left value, $Res Function(_Left) then) =
      __$LeftCopyWithImpl<$Res>;
  @override
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$LeftCopyWithImpl<$Res> extends _$UserActorEventCopyWithImpl<$Res>
    implements _$LeftCopyWith<$Res> {
  __$LeftCopyWithImpl(_Left _value, $Res Function(_Left) _then)
      : super(_value, (v) => _then(v as _Left));

  @override
  _Left get _value => super._value as _Left;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_Left(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_Left implements _Left {
  const _$_Left(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'UserActorEvent.left(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Left &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$LeftCopyWith<_Left> get copyWith =>
      __$LeftCopyWithImpl<_Left>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) present,
    required TResult Function(User user) left,
    required TResult Function(User user) changeVillaHour,
  }) {
    return left(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? present,
    TResult Function(User user)? left,
    TResult Function(User user)? changeVillaHour,
  }) {
    return left?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? present,
    TResult Function(User user)? left,
    TResult Function(User user)? changeVillaHour,
    required TResult orElse(),
  }) {
    if (left != null) {
      return left(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Present value) present,
    required TResult Function(_Left value) left,
    required TResult Function(_ChangeVillaHour value) changeVillaHour,
  }) {
    return left(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Present value)? present,
    TResult Function(_Left value)? left,
    TResult Function(_ChangeVillaHour value)? changeVillaHour,
  }) {
    return left?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Present value)? present,
    TResult Function(_Left value)? left,
    TResult Function(_ChangeVillaHour value)? changeVillaHour,
    required TResult orElse(),
  }) {
    if (left != null) {
      return left(this);
    }
    return orElse();
  }
}

abstract class _Left implements UserActorEvent {
  const factory _Left(User user) = _$_Left;

  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$LeftCopyWith<_Left> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeVillaHourCopyWith<$Res>
    implements $UserActorEventCopyWith<$Res> {
  factory _$ChangeVillaHourCopyWith(
          _ChangeVillaHour value, $Res Function(_ChangeVillaHour) then) =
      __$ChangeVillaHourCopyWithImpl<$Res>;
  @override
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$ChangeVillaHourCopyWithImpl<$Res>
    extends _$UserActorEventCopyWithImpl<$Res>
    implements _$ChangeVillaHourCopyWith<$Res> {
  __$ChangeVillaHourCopyWithImpl(
      _ChangeVillaHour _value, $Res Function(_ChangeVillaHour) _then)
      : super(_value, (v) => _then(v as _ChangeVillaHour));

  @override
  _ChangeVillaHour get _value => super._value as _ChangeVillaHour;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_ChangeVillaHour(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_ChangeVillaHour implements _ChangeVillaHour {
  const _$_ChangeVillaHour(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'UserActorEvent.changeVillaHour(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeVillaHour &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$ChangeVillaHourCopyWith<_ChangeVillaHour> get copyWith =>
      __$ChangeVillaHourCopyWithImpl<_ChangeVillaHour>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) present,
    required TResult Function(User user) left,
    required TResult Function(User user) changeVillaHour,
  }) {
    return changeVillaHour(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? present,
    TResult Function(User user)? left,
    TResult Function(User user)? changeVillaHour,
  }) {
    return changeVillaHour?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? present,
    TResult Function(User user)? left,
    TResult Function(User user)? changeVillaHour,
    required TResult orElse(),
  }) {
    if (changeVillaHour != null) {
      return changeVillaHour(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Present value) present,
    required TResult Function(_Left value) left,
    required TResult Function(_ChangeVillaHour value) changeVillaHour,
  }) {
    return changeVillaHour(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Present value)? present,
    TResult Function(_Left value)? left,
    TResult Function(_ChangeVillaHour value)? changeVillaHour,
  }) {
    return changeVillaHour?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Present value)? present,
    TResult Function(_Left value)? left,
    TResult Function(_ChangeVillaHour value)? changeVillaHour,
    required TResult orElse(),
  }) {
    if (changeVillaHour != null) {
      return changeVillaHour(this);
    }
    return orElse();
  }
}

abstract class _ChangeVillaHour implements UserActorEvent {
  const factory _ChangeVillaHour(User user) = _$_ChangeVillaHour;

  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$ChangeVillaHourCopyWith<_ChangeVillaHour> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserActorStateTearOff {
  const _$UserActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _UpdatedSuccess updatedSuccess() {
    return const _UpdatedSuccess();
  }

  _UpdatedFailure updatedFailure(UserFailure f) {
    return _UpdatedFailure(
      f,
    );
  }

  ActionInProgress actionInProgress() {
    return const ActionInProgress();
  }

  IsLeft isLeft() {
    return const IsLeft();
  }
}

/// @nodoc
const $UserActorState = _$UserActorStateTearOff();

/// @nodoc
mixin _$UserActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updatedSuccess,
    required TResult Function(UserFailure f) updatedFailure,
    required TResult Function() actionInProgress,
    required TResult Function() isLeft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updatedSuccess,
    TResult Function(UserFailure f)? updatedFailure,
    TResult Function()? actionInProgress,
    TResult Function()? isLeft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updatedSuccess,
    TResult Function(UserFailure f)? updatedFailure,
    TResult Function()? actionInProgress,
    TResult Function()? isLeft,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UpdatedSuccess value) updatedSuccess,
    required TResult Function(_UpdatedFailure value) updatedFailure,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(IsLeft value) isLeft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdatedSuccess value)? updatedSuccess,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(IsLeft value)? isLeft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdatedSuccess value)? updatedSuccess,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(IsLeft value)? isLeft,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserActorStateCopyWith<$Res> {
  factory $UserActorStateCopyWith(
          UserActorState value, $Res Function(UserActorState) then) =
      _$UserActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserActorStateCopyWithImpl<$Res>
    implements $UserActorStateCopyWith<$Res> {
  _$UserActorStateCopyWithImpl(this._value, this._then);

  final UserActorState _value;
  // ignore: unused_field
  final $Res Function(UserActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$UserActorStateCopyWithImpl<$Res>
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
    return 'UserActorState.initial()';
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
    required TResult Function() updatedSuccess,
    required TResult Function(UserFailure f) updatedFailure,
    required TResult Function() actionInProgress,
    required TResult Function() isLeft,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updatedSuccess,
    TResult Function(UserFailure f)? updatedFailure,
    TResult Function()? actionInProgress,
    TResult Function()? isLeft,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updatedSuccess,
    TResult Function(UserFailure f)? updatedFailure,
    TResult Function()? actionInProgress,
    TResult Function()? isLeft,
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
    required TResult Function(_UpdatedSuccess value) updatedSuccess,
    required TResult Function(_UpdatedFailure value) updatedFailure,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(IsLeft value) isLeft,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdatedSuccess value)? updatedSuccess,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(IsLeft value)? isLeft,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdatedSuccess value)? updatedSuccess,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(IsLeft value)? isLeft,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$UpdatedSuccessCopyWith<$Res> {
  factory _$UpdatedSuccessCopyWith(
          _UpdatedSuccess value, $Res Function(_UpdatedSuccess) then) =
      __$UpdatedSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdatedSuccessCopyWithImpl<$Res>
    extends _$UserActorStateCopyWithImpl<$Res>
    implements _$UpdatedSuccessCopyWith<$Res> {
  __$UpdatedSuccessCopyWithImpl(
      _UpdatedSuccess _value, $Res Function(_UpdatedSuccess) _then)
      : super(_value, (v) => _then(v as _UpdatedSuccess));

  @override
  _UpdatedSuccess get _value => super._value as _UpdatedSuccess;
}

/// @nodoc

class _$_UpdatedSuccess implements _UpdatedSuccess {
  const _$_UpdatedSuccess();

  @override
  String toString() {
    return 'UserActorState.updatedSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UpdatedSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updatedSuccess,
    required TResult Function(UserFailure f) updatedFailure,
    required TResult Function() actionInProgress,
    required TResult Function() isLeft,
  }) {
    return updatedSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updatedSuccess,
    TResult Function(UserFailure f)? updatedFailure,
    TResult Function()? actionInProgress,
    TResult Function()? isLeft,
  }) {
    return updatedSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updatedSuccess,
    TResult Function(UserFailure f)? updatedFailure,
    TResult Function()? actionInProgress,
    TResult Function()? isLeft,
    required TResult orElse(),
  }) {
    if (updatedSuccess != null) {
      return updatedSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UpdatedSuccess value) updatedSuccess,
    required TResult Function(_UpdatedFailure value) updatedFailure,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(IsLeft value) isLeft,
  }) {
    return updatedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdatedSuccess value)? updatedSuccess,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(IsLeft value)? isLeft,
  }) {
    return updatedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdatedSuccess value)? updatedSuccess,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(IsLeft value)? isLeft,
    required TResult orElse(),
  }) {
    if (updatedSuccess != null) {
      return updatedSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdatedSuccess implements UserActorState {
  const factory _UpdatedSuccess() = _$_UpdatedSuccess;
}

/// @nodoc
abstract class _$UpdatedFailureCopyWith<$Res> {
  factory _$UpdatedFailureCopyWith(
          _UpdatedFailure value, $Res Function(_UpdatedFailure) then) =
      __$UpdatedFailureCopyWithImpl<$Res>;
  $Res call({UserFailure f});

  $UserFailureCopyWith<$Res> get f;
}

/// @nodoc
class __$UpdatedFailureCopyWithImpl<$Res>
    extends _$UserActorStateCopyWithImpl<$Res>
    implements _$UpdatedFailureCopyWith<$Res> {
  __$UpdatedFailureCopyWithImpl(
      _UpdatedFailure _value, $Res Function(_UpdatedFailure) _then)
      : super(_value, (v) => _then(v as _UpdatedFailure));

  @override
  _UpdatedFailure get _value => super._value as _UpdatedFailure;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_UpdatedFailure(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as UserFailure,
    ));
  }

  @override
  $UserFailureCopyWith<$Res> get f {
    return $UserFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$_UpdatedFailure implements _UpdatedFailure {
  const _$_UpdatedFailure(this.f);

  @override
  final UserFailure f;

  @override
  String toString() {
    return 'UserActorState.updatedFailure(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdatedFailure &&
            const DeepCollectionEquality().equals(other.f, f));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(f));

  @JsonKey(ignore: true)
  @override
  _$UpdatedFailureCopyWith<_UpdatedFailure> get copyWith =>
      __$UpdatedFailureCopyWithImpl<_UpdatedFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updatedSuccess,
    required TResult Function(UserFailure f) updatedFailure,
    required TResult Function() actionInProgress,
    required TResult Function() isLeft,
  }) {
    return updatedFailure(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updatedSuccess,
    TResult Function(UserFailure f)? updatedFailure,
    TResult Function()? actionInProgress,
    TResult Function()? isLeft,
  }) {
    return updatedFailure?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updatedSuccess,
    TResult Function(UserFailure f)? updatedFailure,
    TResult Function()? actionInProgress,
    TResult Function()? isLeft,
    required TResult orElse(),
  }) {
    if (updatedFailure != null) {
      return updatedFailure(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UpdatedSuccess value) updatedSuccess,
    required TResult Function(_UpdatedFailure value) updatedFailure,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(IsLeft value) isLeft,
  }) {
    return updatedFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdatedSuccess value)? updatedSuccess,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(IsLeft value)? isLeft,
  }) {
    return updatedFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdatedSuccess value)? updatedSuccess,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(IsLeft value)? isLeft,
    required TResult orElse(),
  }) {
    if (updatedFailure != null) {
      return updatedFailure(this);
    }
    return orElse();
  }
}

abstract class _UpdatedFailure implements UserActorState {
  const factory _UpdatedFailure(UserFailure f) = _$_UpdatedFailure;

  UserFailure get f;
  @JsonKey(ignore: true)
  _$UpdatedFailureCopyWith<_UpdatedFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionInProgressCopyWith<$Res> {
  factory $ActionInProgressCopyWith(
          ActionInProgress value, $Res Function(ActionInProgress) then) =
      _$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$ActionInProgressCopyWithImpl<$Res>
    extends _$UserActorStateCopyWithImpl<$Res>
    implements $ActionInProgressCopyWith<$Res> {
  _$ActionInProgressCopyWithImpl(
      ActionInProgress _value, $Res Function(ActionInProgress) _then)
      : super(_value, (v) => _then(v as ActionInProgress));

  @override
  ActionInProgress get _value => super._value as ActionInProgress;
}

/// @nodoc

class _$ActionInProgress implements ActionInProgress {
  const _$ActionInProgress();

  @override
  String toString() {
    return 'UserActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updatedSuccess,
    required TResult Function(UserFailure f) updatedFailure,
    required TResult Function() actionInProgress,
    required TResult Function() isLeft,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updatedSuccess,
    TResult Function(UserFailure f)? updatedFailure,
    TResult Function()? actionInProgress,
    TResult Function()? isLeft,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updatedSuccess,
    TResult Function(UserFailure f)? updatedFailure,
    TResult Function()? actionInProgress,
    TResult Function()? isLeft,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UpdatedSuccess value) updatedSuccess,
    required TResult Function(_UpdatedFailure value) updatedFailure,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(IsLeft value) isLeft,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdatedSuccess value)? updatedSuccess,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(IsLeft value)? isLeft,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdatedSuccess value)? updatedSuccess,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(IsLeft value)? isLeft,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class ActionInProgress implements UserActorState {
  const factory ActionInProgress() = _$ActionInProgress;
}

/// @nodoc
abstract class $IsLeftCopyWith<$Res> {
  factory $IsLeftCopyWith(IsLeft value, $Res Function(IsLeft) then) =
      _$IsLeftCopyWithImpl<$Res>;
}

/// @nodoc
class _$IsLeftCopyWithImpl<$Res> extends _$UserActorStateCopyWithImpl<$Res>
    implements $IsLeftCopyWith<$Res> {
  _$IsLeftCopyWithImpl(IsLeft _value, $Res Function(IsLeft) _then)
      : super(_value, (v) => _then(v as IsLeft));

  @override
  IsLeft get _value => super._value as IsLeft;
}

/// @nodoc

class _$IsLeft implements IsLeft {
  const _$IsLeft();

  @override
  String toString() {
    return 'UserActorState.isLeft()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is IsLeft);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() updatedSuccess,
    required TResult Function(UserFailure f) updatedFailure,
    required TResult Function() actionInProgress,
    required TResult Function() isLeft,
  }) {
    return isLeft();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updatedSuccess,
    TResult Function(UserFailure f)? updatedFailure,
    TResult Function()? actionInProgress,
    TResult Function()? isLeft,
  }) {
    return isLeft?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? updatedSuccess,
    TResult Function(UserFailure f)? updatedFailure,
    TResult Function()? actionInProgress,
    TResult Function()? isLeft,
    required TResult orElse(),
  }) {
    if (isLeft != null) {
      return isLeft();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UpdatedSuccess value) updatedSuccess,
    required TResult Function(_UpdatedFailure value) updatedFailure,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(IsLeft value) isLeft,
  }) {
    return isLeft(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdatedSuccess value)? updatedSuccess,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(IsLeft value)? isLeft,
  }) {
    return isLeft?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdatedSuccess value)? updatedSuccess,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(IsLeft value)? isLeft,
    required TResult orElse(),
  }) {
    if (isLeft != null) {
      return isLeft(this);
    }
    return orElse();
  }
}

abstract class IsLeft implements UserActorState {
  const factory IsLeft() = _$IsLeft;
}
