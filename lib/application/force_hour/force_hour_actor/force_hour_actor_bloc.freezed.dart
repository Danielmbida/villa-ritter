// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'force_hour_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ForceHourActorEventTearOff {
  const _$ForceHourActorEventTearOff();

  _CloseVilla closeVilla(Force isForceClosed) {
    return _CloseVilla(
      isForceClosed,
    );
  }

  _OpenVilla openVilla(Force isForceOpened) {
    return _OpenVilla(
      isForceOpened,
    );
  }
}

/// @nodoc
const $ForceHourActorEvent = _$ForceHourActorEventTearOff();

/// @nodoc
mixin _$ForceHourActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Force isForceClosed) closeVilla,
    required TResult Function(Force isForceOpened) openVilla,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Force isForceClosed)? closeVilla,
    TResult Function(Force isForceOpened)? openVilla,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Force isForceClosed)? closeVilla,
    TResult Function(Force isForceOpened)? openVilla,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CloseVilla value) closeVilla,
    required TResult Function(_OpenVilla value) openVilla,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CloseVilla value)? closeVilla,
    TResult Function(_OpenVilla value)? openVilla,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CloseVilla value)? closeVilla,
    TResult Function(_OpenVilla value)? openVilla,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForceHourActorEventCopyWith<$Res> {
  factory $ForceHourActorEventCopyWith(
          ForceHourActorEvent value, $Res Function(ForceHourActorEvent) then) =
      _$ForceHourActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForceHourActorEventCopyWithImpl<$Res>
    implements $ForceHourActorEventCopyWith<$Res> {
  _$ForceHourActorEventCopyWithImpl(this._value, this._then);

  final ForceHourActorEvent _value;
  // ignore: unused_field
  final $Res Function(ForceHourActorEvent) _then;
}

/// @nodoc
abstract class _$CloseVillaCopyWith<$Res> {
  factory _$CloseVillaCopyWith(
          _CloseVilla value, $Res Function(_CloseVilla) then) =
      __$CloseVillaCopyWithImpl<$Res>;
  $Res call({Force isForceClosed});

  $ForceCopyWith<$Res> get isForceClosed;
}

/// @nodoc
class __$CloseVillaCopyWithImpl<$Res>
    extends _$ForceHourActorEventCopyWithImpl<$Res>
    implements _$CloseVillaCopyWith<$Res> {
  __$CloseVillaCopyWithImpl(
      _CloseVilla _value, $Res Function(_CloseVilla) _then)
      : super(_value, (v) => _then(v as _CloseVilla));

  @override
  _CloseVilla get _value => super._value as _CloseVilla;

  @override
  $Res call({
    Object? isForceClosed = freezed,
  }) {
    return _then(_CloseVilla(
      isForceClosed == freezed
          ? _value.isForceClosed
          : isForceClosed // ignore: cast_nullable_to_non_nullable
              as Force,
    ));
  }

  @override
  $ForceCopyWith<$Res> get isForceClosed {
    return $ForceCopyWith<$Res>(_value.isForceClosed, (value) {
      return _then(_value.copyWith(isForceClosed: value));
    });
  }
}

/// @nodoc

class _$_CloseVilla implements _CloseVilla {
  const _$_CloseVilla(this.isForceClosed);

  @override
  final Force isForceClosed;

  @override
  String toString() {
    return 'ForceHourActorEvent.closeVilla(isForceClosed: $isForceClosed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CloseVilla &&
            const DeepCollectionEquality()
                .equals(other.isForceClosed, isForceClosed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isForceClosed));

  @JsonKey(ignore: true)
  @override
  _$CloseVillaCopyWith<_CloseVilla> get copyWith =>
      __$CloseVillaCopyWithImpl<_CloseVilla>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Force isForceClosed) closeVilla,
    required TResult Function(Force isForceOpened) openVilla,
  }) {
    return closeVilla(isForceClosed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Force isForceClosed)? closeVilla,
    TResult Function(Force isForceOpened)? openVilla,
  }) {
    return closeVilla?.call(isForceClosed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Force isForceClosed)? closeVilla,
    TResult Function(Force isForceOpened)? openVilla,
    required TResult orElse(),
  }) {
    if (closeVilla != null) {
      return closeVilla(isForceClosed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CloseVilla value) closeVilla,
    required TResult Function(_OpenVilla value) openVilla,
  }) {
    return closeVilla(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CloseVilla value)? closeVilla,
    TResult Function(_OpenVilla value)? openVilla,
  }) {
    return closeVilla?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CloseVilla value)? closeVilla,
    TResult Function(_OpenVilla value)? openVilla,
    required TResult orElse(),
  }) {
    if (closeVilla != null) {
      return closeVilla(this);
    }
    return orElse();
  }
}

abstract class _CloseVilla implements ForceHourActorEvent {
  const factory _CloseVilla(Force isForceClosed) = _$_CloseVilla;

  Force get isForceClosed;
  @JsonKey(ignore: true)
  _$CloseVillaCopyWith<_CloseVilla> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OpenVillaCopyWith<$Res> {
  factory _$OpenVillaCopyWith(
          _OpenVilla value, $Res Function(_OpenVilla) then) =
      __$OpenVillaCopyWithImpl<$Res>;
  $Res call({Force isForceOpened});

  $ForceCopyWith<$Res> get isForceOpened;
}

/// @nodoc
class __$OpenVillaCopyWithImpl<$Res>
    extends _$ForceHourActorEventCopyWithImpl<$Res>
    implements _$OpenVillaCopyWith<$Res> {
  __$OpenVillaCopyWithImpl(_OpenVilla _value, $Res Function(_OpenVilla) _then)
      : super(_value, (v) => _then(v as _OpenVilla));

  @override
  _OpenVilla get _value => super._value as _OpenVilla;

  @override
  $Res call({
    Object? isForceOpened = freezed,
  }) {
    return _then(_OpenVilla(
      isForceOpened == freezed
          ? _value.isForceOpened
          : isForceOpened // ignore: cast_nullable_to_non_nullable
              as Force,
    ));
  }

  @override
  $ForceCopyWith<$Res> get isForceOpened {
    return $ForceCopyWith<$Res>(_value.isForceOpened, (value) {
      return _then(_value.copyWith(isForceOpened: value));
    });
  }
}

/// @nodoc

class _$_OpenVilla implements _OpenVilla {
  const _$_OpenVilla(this.isForceOpened);

  @override
  final Force isForceOpened;

  @override
  String toString() {
    return 'ForceHourActorEvent.openVilla(isForceOpened: $isForceOpened)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OpenVilla &&
            const DeepCollectionEquality()
                .equals(other.isForceOpened, isForceOpened));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isForceOpened));

  @JsonKey(ignore: true)
  @override
  _$OpenVillaCopyWith<_OpenVilla> get copyWith =>
      __$OpenVillaCopyWithImpl<_OpenVilla>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Force isForceClosed) closeVilla,
    required TResult Function(Force isForceOpened) openVilla,
  }) {
    return openVilla(isForceOpened);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Force isForceClosed)? closeVilla,
    TResult Function(Force isForceOpened)? openVilla,
  }) {
    return openVilla?.call(isForceOpened);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Force isForceClosed)? closeVilla,
    TResult Function(Force isForceOpened)? openVilla,
    required TResult orElse(),
  }) {
    if (openVilla != null) {
      return openVilla(isForceOpened);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CloseVilla value) closeVilla,
    required TResult Function(_OpenVilla value) openVilla,
  }) {
    return openVilla(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CloseVilla value)? closeVilla,
    TResult Function(_OpenVilla value)? openVilla,
  }) {
    return openVilla?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CloseVilla value)? closeVilla,
    TResult Function(_OpenVilla value)? openVilla,
    required TResult orElse(),
  }) {
    if (openVilla != null) {
      return openVilla(this);
    }
    return orElse();
  }
}

abstract class _OpenVilla implements ForceHourActorEvent {
  const factory _OpenVilla(Force isForceOpened) = _$_OpenVilla;

  Force get isForceOpened;
  @JsonKey(ignore: true)
  _$OpenVillaCopyWith<_OpenVilla> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ForceHourActorStateTearOff {
  const _$ForceHourActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _UpdatedFailure updatedFailure(ForceHourFailure f) {
    return _UpdatedFailure(
      f,
    );
  }

  ActionInProgress actionInProgress() {
    return const ActionInProgress();
  }

  _OpenByAdmin openByAdmin() {
    return const _OpenByAdmin();
  }

  _CloseByAdmin closeByAdmin() {
    return const _CloseByAdmin();
  }
}

/// @nodoc
const $ForceHourActorState = _$ForceHourActorStateTearOff();

/// @nodoc
mixin _$ForceHourActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ForceHourFailure f) updatedFailure,
    required TResult Function() actionInProgress,
    required TResult Function() openByAdmin,
    required TResult Function() closeByAdmin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ForceHourFailure f)? updatedFailure,
    TResult Function()? actionInProgress,
    TResult Function()? openByAdmin,
    TResult Function()? closeByAdmin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ForceHourFailure f)? updatedFailure,
    TResult Function()? actionInProgress,
    TResult Function()? openByAdmin,
    TResult Function()? closeByAdmin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UpdatedFailure value) updatedFailure,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(_OpenByAdmin value) openByAdmin,
    required TResult Function(_CloseByAdmin value) closeByAdmin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(_OpenByAdmin value)? openByAdmin,
    TResult Function(_CloseByAdmin value)? closeByAdmin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(_OpenByAdmin value)? openByAdmin,
    TResult Function(_CloseByAdmin value)? closeByAdmin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForceHourActorStateCopyWith<$Res> {
  factory $ForceHourActorStateCopyWith(
          ForceHourActorState value, $Res Function(ForceHourActorState) then) =
      _$ForceHourActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForceHourActorStateCopyWithImpl<$Res>
    implements $ForceHourActorStateCopyWith<$Res> {
  _$ForceHourActorStateCopyWithImpl(this._value, this._then);

  final ForceHourActorState _value;
  // ignore: unused_field
  final $Res Function(ForceHourActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ForceHourActorStateCopyWithImpl<$Res>
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
    return 'ForceHourActorState.initial()';
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
    required TResult Function(ForceHourFailure f) updatedFailure,
    required TResult Function() actionInProgress,
    required TResult Function() openByAdmin,
    required TResult Function() closeByAdmin,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ForceHourFailure f)? updatedFailure,
    TResult Function()? actionInProgress,
    TResult Function()? openByAdmin,
    TResult Function()? closeByAdmin,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ForceHourFailure f)? updatedFailure,
    TResult Function()? actionInProgress,
    TResult Function()? openByAdmin,
    TResult Function()? closeByAdmin,
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
    required TResult Function(_UpdatedFailure value) updatedFailure,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(_OpenByAdmin value) openByAdmin,
    required TResult Function(_CloseByAdmin value) closeByAdmin,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(_OpenByAdmin value)? openByAdmin,
    TResult Function(_CloseByAdmin value)? closeByAdmin,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(_OpenByAdmin value)? openByAdmin,
    TResult Function(_CloseByAdmin value)? closeByAdmin,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ForceHourActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$UpdatedFailureCopyWith<$Res> {
  factory _$UpdatedFailureCopyWith(
          _UpdatedFailure value, $Res Function(_UpdatedFailure) then) =
      __$UpdatedFailureCopyWithImpl<$Res>;
  $Res call({ForceHourFailure f});

  $ForceHourFailureCopyWith<$Res> get f;
}

/// @nodoc
class __$UpdatedFailureCopyWithImpl<$Res>
    extends _$ForceHourActorStateCopyWithImpl<$Res>
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
              as ForceHourFailure,
    ));
  }

  @override
  $ForceHourFailureCopyWith<$Res> get f {
    return $ForceHourFailureCopyWith<$Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$_UpdatedFailure implements _UpdatedFailure {
  const _$_UpdatedFailure(this.f);

  @override
  final ForceHourFailure f;

  @override
  String toString() {
    return 'ForceHourActorState.updatedFailure(f: $f)';
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
    required TResult Function(ForceHourFailure f) updatedFailure,
    required TResult Function() actionInProgress,
    required TResult Function() openByAdmin,
    required TResult Function() closeByAdmin,
  }) {
    return updatedFailure(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ForceHourFailure f)? updatedFailure,
    TResult Function()? actionInProgress,
    TResult Function()? openByAdmin,
    TResult Function()? closeByAdmin,
  }) {
    return updatedFailure?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ForceHourFailure f)? updatedFailure,
    TResult Function()? actionInProgress,
    TResult Function()? openByAdmin,
    TResult Function()? closeByAdmin,
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
    required TResult Function(_UpdatedFailure value) updatedFailure,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(_OpenByAdmin value) openByAdmin,
    required TResult Function(_CloseByAdmin value) closeByAdmin,
  }) {
    return updatedFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(_OpenByAdmin value)? openByAdmin,
    TResult Function(_CloseByAdmin value)? closeByAdmin,
  }) {
    return updatedFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(_OpenByAdmin value)? openByAdmin,
    TResult Function(_CloseByAdmin value)? closeByAdmin,
    required TResult orElse(),
  }) {
    if (updatedFailure != null) {
      return updatedFailure(this);
    }
    return orElse();
  }
}

abstract class _UpdatedFailure implements ForceHourActorState {
  const factory _UpdatedFailure(ForceHourFailure f) = _$_UpdatedFailure;

  ForceHourFailure get f;
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
    extends _$ForceHourActorStateCopyWithImpl<$Res>
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
    return 'ForceHourActorState.actionInProgress()';
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
    required TResult Function(ForceHourFailure f) updatedFailure,
    required TResult Function() actionInProgress,
    required TResult Function() openByAdmin,
    required TResult Function() closeByAdmin,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ForceHourFailure f)? updatedFailure,
    TResult Function()? actionInProgress,
    TResult Function()? openByAdmin,
    TResult Function()? closeByAdmin,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ForceHourFailure f)? updatedFailure,
    TResult Function()? actionInProgress,
    TResult Function()? openByAdmin,
    TResult Function()? closeByAdmin,
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
    required TResult Function(_UpdatedFailure value) updatedFailure,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(_OpenByAdmin value) openByAdmin,
    required TResult Function(_CloseByAdmin value) closeByAdmin,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(_OpenByAdmin value)? openByAdmin,
    TResult Function(_CloseByAdmin value)? closeByAdmin,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(_OpenByAdmin value)? openByAdmin,
    TResult Function(_CloseByAdmin value)? closeByAdmin,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class ActionInProgress implements ForceHourActorState {
  const factory ActionInProgress() = _$ActionInProgress;
}

/// @nodoc
abstract class _$OpenByAdminCopyWith<$Res> {
  factory _$OpenByAdminCopyWith(
          _OpenByAdmin value, $Res Function(_OpenByAdmin) then) =
      __$OpenByAdminCopyWithImpl<$Res>;
}

/// @nodoc
class __$OpenByAdminCopyWithImpl<$Res>
    extends _$ForceHourActorStateCopyWithImpl<$Res>
    implements _$OpenByAdminCopyWith<$Res> {
  __$OpenByAdminCopyWithImpl(
      _OpenByAdmin _value, $Res Function(_OpenByAdmin) _then)
      : super(_value, (v) => _then(v as _OpenByAdmin));

  @override
  _OpenByAdmin get _value => super._value as _OpenByAdmin;
}

/// @nodoc

class _$_OpenByAdmin implements _OpenByAdmin {
  const _$_OpenByAdmin();

  @override
  String toString() {
    return 'ForceHourActorState.openByAdmin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _OpenByAdmin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ForceHourFailure f) updatedFailure,
    required TResult Function() actionInProgress,
    required TResult Function() openByAdmin,
    required TResult Function() closeByAdmin,
  }) {
    return openByAdmin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ForceHourFailure f)? updatedFailure,
    TResult Function()? actionInProgress,
    TResult Function()? openByAdmin,
    TResult Function()? closeByAdmin,
  }) {
    return openByAdmin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ForceHourFailure f)? updatedFailure,
    TResult Function()? actionInProgress,
    TResult Function()? openByAdmin,
    TResult Function()? closeByAdmin,
    required TResult orElse(),
  }) {
    if (openByAdmin != null) {
      return openByAdmin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UpdatedFailure value) updatedFailure,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(_OpenByAdmin value) openByAdmin,
    required TResult Function(_CloseByAdmin value) closeByAdmin,
  }) {
    return openByAdmin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(_OpenByAdmin value)? openByAdmin,
    TResult Function(_CloseByAdmin value)? closeByAdmin,
  }) {
    return openByAdmin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(_OpenByAdmin value)? openByAdmin,
    TResult Function(_CloseByAdmin value)? closeByAdmin,
    required TResult orElse(),
  }) {
    if (openByAdmin != null) {
      return openByAdmin(this);
    }
    return orElse();
  }
}

abstract class _OpenByAdmin implements ForceHourActorState {
  const factory _OpenByAdmin() = _$_OpenByAdmin;
}

/// @nodoc
abstract class _$CloseByAdminCopyWith<$Res> {
  factory _$CloseByAdminCopyWith(
          _CloseByAdmin value, $Res Function(_CloseByAdmin) then) =
      __$CloseByAdminCopyWithImpl<$Res>;
}

/// @nodoc
class __$CloseByAdminCopyWithImpl<$Res>
    extends _$ForceHourActorStateCopyWithImpl<$Res>
    implements _$CloseByAdminCopyWith<$Res> {
  __$CloseByAdminCopyWithImpl(
      _CloseByAdmin _value, $Res Function(_CloseByAdmin) _then)
      : super(_value, (v) => _then(v as _CloseByAdmin));

  @override
  _CloseByAdmin get _value => super._value as _CloseByAdmin;
}

/// @nodoc

class _$_CloseByAdmin implements _CloseByAdmin {
  const _$_CloseByAdmin();

  @override
  String toString() {
    return 'ForceHourActorState.closeByAdmin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CloseByAdmin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ForceHourFailure f) updatedFailure,
    required TResult Function() actionInProgress,
    required TResult Function() openByAdmin,
    required TResult Function() closeByAdmin,
  }) {
    return closeByAdmin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ForceHourFailure f)? updatedFailure,
    TResult Function()? actionInProgress,
    TResult Function()? openByAdmin,
    TResult Function()? closeByAdmin,
  }) {
    return closeByAdmin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ForceHourFailure f)? updatedFailure,
    TResult Function()? actionInProgress,
    TResult Function()? openByAdmin,
    TResult Function()? closeByAdmin,
    required TResult orElse(),
  }) {
    if (closeByAdmin != null) {
      return closeByAdmin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UpdatedFailure value) updatedFailure,
    required TResult Function(ActionInProgress value) actionInProgress,
    required TResult Function(_OpenByAdmin value) openByAdmin,
    required TResult Function(_CloseByAdmin value) closeByAdmin,
  }) {
    return closeByAdmin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(_OpenByAdmin value)? openByAdmin,
    TResult Function(_CloseByAdmin value)? closeByAdmin,
  }) {
    return closeByAdmin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(ActionInProgress value)? actionInProgress,
    TResult Function(_OpenByAdmin value)? openByAdmin,
    TResult Function(_CloseByAdmin value)? closeByAdmin,
    required TResult orElse(),
  }) {
    if (closeByAdmin != null) {
      return closeByAdmin(this);
    }
    return orElse();
  }
}

abstract class _CloseByAdmin implements ForceHourActorState {
  const factory _CloseByAdmin() = _$_CloseByAdmin;
}
