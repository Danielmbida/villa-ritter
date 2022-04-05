// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'scan_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ScanEventTearOff {
  const _$ScanEventTearOff();

  _ScanCheckRequested scanCheckRequested(String codeQR) {
    return _ScanCheckRequested(
      codeQR,
    );
  }

  _ScanDisplaErrorRequested scanDisplayErrorRequested() {
    return const _ScanDisplaErrorRequested();
  }

  _ScanResetted scanResetted() {
    return const _ScanResetted();
  }
}

/// @nodoc
const $ScanEvent = _$ScanEventTearOff();

/// @nodoc
mixin _$ScanEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String codeQR) scanCheckRequested,
    required TResult Function() scanDisplayErrorRequested,
    required TResult Function() scanResetted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String codeQR)? scanCheckRequested,
    TResult Function()? scanDisplayErrorRequested,
    TResult Function()? scanResetted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScanCheckRequested value) scanCheckRequested,
    required TResult Function(_ScanDisplaErrorRequested value)
        scanDisplayErrorRequested,
    required TResult Function(_ScanResetted value) scanResetted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScanCheckRequested value)? scanCheckRequested,
    TResult Function(_ScanDisplaErrorRequested value)?
        scanDisplayErrorRequested,
    TResult Function(_ScanResetted value)? scanResetted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanEventCopyWith<$Res> {
  factory $ScanEventCopyWith(ScanEvent value, $Res Function(ScanEvent) then) =
      _$ScanEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScanEventCopyWithImpl<$Res> implements $ScanEventCopyWith<$Res> {
  _$ScanEventCopyWithImpl(this._value, this._then);

  final ScanEvent _value;
  // ignore: unused_field
  final $Res Function(ScanEvent) _then;
}

/// @nodoc
abstract class _$ScanCheckRequestedCopyWith<$Res> {
  factory _$ScanCheckRequestedCopyWith(
          _ScanCheckRequested value, $Res Function(_ScanCheckRequested) then) =
      __$ScanCheckRequestedCopyWithImpl<$Res>;
  $Res call({String codeQR});
}

/// @nodoc
class __$ScanCheckRequestedCopyWithImpl<$Res>
    extends _$ScanEventCopyWithImpl<$Res>
    implements _$ScanCheckRequestedCopyWith<$Res> {
  __$ScanCheckRequestedCopyWithImpl(
      _ScanCheckRequested _value, $Res Function(_ScanCheckRequested) _then)
      : super(_value, (v) => _then(v as _ScanCheckRequested));

  @override
  _ScanCheckRequested get _value => super._value as _ScanCheckRequested;

  @override
  $Res call({
    Object? codeQR = freezed,
  }) {
    return _then(_ScanCheckRequested(
      codeQR == freezed
          ? _value.codeQR
          : codeQR // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ScanCheckRequested
    with DiagnosticableTreeMixin
    implements _ScanCheckRequested {
  const _$_ScanCheckRequested(this.codeQR);

  @override
  final String codeQR;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScanEvent.scanCheckRequested(codeQR: $codeQR)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScanEvent.scanCheckRequested'))
      ..add(DiagnosticsProperty('codeQR', codeQR));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ScanCheckRequested &&
            (identical(other.codeQR, codeQR) ||
                const DeepCollectionEquality().equals(other.codeQR, codeQR)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(codeQR);

  @JsonKey(ignore: true)
  @override
  _$ScanCheckRequestedCopyWith<_ScanCheckRequested> get copyWith =>
      __$ScanCheckRequestedCopyWithImpl<_ScanCheckRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String codeQR) scanCheckRequested,
    required TResult Function() scanDisplayErrorRequested,
    required TResult Function() scanResetted,
  }) {
    return scanCheckRequested(codeQR);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String codeQR)? scanCheckRequested,
    TResult Function()? scanDisplayErrorRequested,
    TResult Function()? scanResetted,
    required TResult orElse(),
  }) {
    if (scanCheckRequested != null) {
      return scanCheckRequested(codeQR);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScanCheckRequested value) scanCheckRequested,
    required TResult Function(_ScanDisplaErrorRequested value)
        scanDisplayErrorRequested,
    required TResult Function(_ScanResetted value) scanResetted,
  }) {
    return scanCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScanCheckRequested value)? scanCheckRequested,
    TResult Function(_ScanDisplaErrorRequested value)?
        scanDisplayErrorRequested,
    TResult Function(_ScanResetted value)? scanResetted,
    required TResult orElse(),
  }) {
    if (scanCheckRequested != null) {
      return scanCheckRequested(this);
    }
    return orElse();
  }
}

abstract class _ScanCheckRequested implements ScanEvent {
  const factory _ScanCheckRequested(String codeQR) = _$_ScanCheckRequested;

  String get codeQR => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ScanCheckRequestedCopyWith<_ScanCheckRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ScanDisplaErrorRequestedCopyWith<$Res> {
  factory _$ScanDisplaErrorRequestedCopyWith(_ScanDisplaErrorRequested value,
          $Res Function(_ScanDisplaErrorRequested) then) =
      __$ScanDisplaErrorRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ScanDisplaErrorRequestedCopyWithImpl<$Res>
    extends _$ScanEventCopyWithImpl<$Res>
    implements _$ScanDisplaErrorRequestedCopyWith<$Res> {
  __$ScanDisplaErrorRequestedCopyWithImpl(_ScanDisplaErrorRequested _value,
      $Res Function(_ScanDisplaErrorRequested) _then)
      : super(_value, (v) => _then(v as _ScanDisplaErrorRequested));

  @override
  _ScanDisplaErrorRequested get _value =>
      super._value as _ScanDisplaErrorRequested;
}

/// @nodoc

class _$_ScanDisplaErrorRequested
    with DiagnosticableTreeMixin
    implements _ScanDisplaErrorRequested {
  const _$_ScanDisplaErrorRequested();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScanEvent.scanDisplayErrorRequested()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScanEvent.scanDisplayErrorRequested'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ScanDisplaErrorRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String codeQR) scanCheckRequested,
    required TResult Function() scanDisplayErrorRequested,
    required TResult Function() scanResetted,
  }) {
    return scanDisplayErrorRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String codeQR)? scanCheckRequested,
    TResult Function()? scanDisplayErrorRequested,
    TResult Function()? scanResetted,
    required TResult orElse(),
  }) {
    if (scanDisplayErrorRequested != null) {
      return scanDisplayErrorRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScanCheckRequested value) scanCheckRequested,
    required TResult Function(_ScanDisplaErrorRequested value)
        scanDisplayErrorRequested,
    required TResult Function(_ScanResetted value) scanResetted,
  }) {
    return scanDisplayErrorRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScanCheckRequested value)? scanCheckRequested,
    TResult Function(_ScanDisplaErrorRequested value)?
        scanDisplayErrorRequested,
    TResult Function(_ScanResetted value)? scanResetted,
    required TResult orElse(),
  }) {
    if (scanDisplayErrorRequested != null) {
      return scanDisplayErrorRequested(this);
    }
    return orElse();
  }
}

abstract class _ScanDisplaErrorRequested implements ScanEvent {
  const factory _ScanDisplaErrorRequested() = _$_ScanDisplaErrorRequested;
}

/// @nodoc
abstract class _$ScanResettedCopyWith<$Res> {
  factory _$ScanResettedCopyWith(
          _ScanResetted value, $Res Function(_ScanResetted) then) =
      __$ScanResettedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ScanResettedCopyWithImpl<$Res> extends _$ScanEventCopyWithImpl<$Res>
    implements _$ScanResettedCopyWith<$Res> {
  __$ScanResettedCopyWithImpl(
      _ScanResetted _value, $Res Function(_ScanResetted) _then)
      : super(_value, (v) => _then(v as _ScanResetted));

  @override
  _ScanResetted get _value => super._value as _ScanResetted;
}

/// @nodoc

class _$_ScanResetted with DiagnosticableTreeMixin implements _ScanResetted {
  const _$_ScanResetted();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScanEvent.scanResetted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ScanEvent.scanResetted'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ScanResetted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String codeQR) scanCheckRequested,
    required TResult Function() scanDisplayErrorRequested,
    required TResult Function() scanResetted,
  }) {
    return scanResetted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String codeQR)? scanCheckRequested,
    TResult Function()? scanDisplayErrorRequested,
    TResult Function()? scanResetted,
    required TResult orElse(),
  }) {
    if (scanResetted != null) {
      return scanResetted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScanCheckRequested value) scanCheckRequested,
    required TResult Function(_ScanDisplaErrorRequested value)
        scanDisplayErrorRequested,
    required TResult Function(_ScanResetted value) scanResetted,
  }) {
    return scanResetted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ScanCheckRequested value)? scanCheckRequested,
    TResult Function(_ScanDisplaErrorRequested value)?
        scanDisplayErrorRequested,
    TResult Function(_ScanResetted value)? scanResetted,
    required TResult orElse(),
  }) {
    if (scanResetted != null) {
      return scanResetted(this);
    }
    return orElse();
  }
}

abstract class _ScanResetted implements ScanEvent {
  const factory _ScanResetted() = _$_ScanResetted;
}

/// @nodoc
class _$ScanStateTearOff {
  const _$ScanStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ScanFail scanFail() {
    return const _ScanFail();
  }

  _Sucess sucess(String code) {
    return _Sucess(
      code,
    );
  }

  _ScanTimeout scanTimeout() {
    return const _ScanTimeout();
  }
}

/// @nodoc
const $ScanState = _$ScanStateTearOff();

/// @nodoc
mixin _$ScanState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() scanFail,
    required TResult Function(String code) sucess,
    required TResult Function() scanTimeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? scanFail,
    TResult Function(String code)? sucess,
    TResult Function()? scanTimeout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ScanFail value) scanFail,
    required TResult Function(_Sucess value) sucess,
    required TResult Function(_ScanTimeout value) scanTimeout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ScanFail value)? scanFail,
    TResult Function(_Sucess value)? sucess,
    TResult Function(_ScanTimeout value)? scanTimeout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanStateCopyWith<$Res> {
  factory $ScanStateCopyWith(ScanState value, $Res Function(ScanState) then) =
      _$ScanStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScanStateCopyWithImpl<$Res> implements $ScanStateCopyWith<$Res> {
  _$ScanStateCopyWithImpl(this._value, this._then);

  final ScanState _value;
  // ignore: unused_field
  final $Res Function(ScanState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ScanStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScanState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ScanState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() scanFail,
    required TResult Function(String code) sucess,
    required TResult Function() scanTimeout,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? scanFail,
    TResult Function(String code)? sucess,
    TResult Function()? scanTimeout,
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
    required TResult Function(_ScanFail value) scanFail,
    required TResult Function(_Sucess value) sucess,
    required TResult Function(_ScanTimeout value) scanTimeout,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ScanFail value)? scanFail,
    TResult Function(_Sucess value)? sucess,
    TResult Function(_ScanTimeout value)? scanTimeout,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ScanState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ScanFailCopyWith<$Res> {
  factory _$ScanFailCopyWith(_ScanFail value, $Res Function(_ScanFail) then) =
      __$ScanFailCopyWithImpl<$Res>;
}

/// @nodoc
class __$ScanFailCopyWithImpl<$Res> extends _$ScanStateCopyWithImpl<$Res>
    implements _$ScanFailCopyWith<$Res> {
  __$ScanFailCopyWithImpl(_ScanFail _value, $Res Function(_ScanFail) _then)
      : super(_value, (v) => _then(v as _ScanFail));

  @override
  _ScanFail get _value => super._value as _ScanFail;
}

/// @nodoc

class _$_ScanFail with DiagnosticableTreeMixin implements _ScanFail {
  const _$_ScanFail();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScanState.scanFail()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ScanState.scanFail'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ScanFail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() scanFail,
    required TResult Function(String code) sucess,
    required TResult Function() scanTimeout,
  }) {
    return scanFail();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? scanFail,
    TResult Function(String code)? sucess,
    TResult Function()? scanTimeout,
    required TResult orElse(),
  }) {
    if (scanFail != null) {
      return scanFail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ScanFail value) scanFail,
    required TResult Function(_Sucess value) sucess,
    required TResult Function(_ScanTimeout value) scanTimeout,
  }) {
    return scanFail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ScanFail value)? scanFail,
    TResult Function(_Sucess value)? sucess,
    TResult Function(_ScanTimeout value)? scanTimeout,
    required TResult orElse(),
  }) {
    if (scanFail != null) {
      return scanFail(this);
    }
    return orElse();
  }
}

abstract class _ScanFail implements ScanState {
  const factory _ScanFail() = _$_ScanFail;
}

/// @nodoc
abstract class _$SucessCopyWith<$Res> {
  factory _$SucessCopyWith(_Sucess value, $Res Function(_Sucess) then) =
      __$SucessCopyWithImpl<$Res>;
  $Res call({String code});
}

/// @nodoc
class __$SucessCopyWithImpl<$Res> extends _$ScanStateCopyWithImpl<$Res>
    implements _$SucessCopyWith<$Res> {
  __$SucessCopyWithImpl(_Sucess _value, $Res Function(_Sucess) _then)
      : super(_value, (v) => _then(v as _Sucess));

  @override
  _Sucess get _value => super._value as _Sucess;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_Sucess(
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Sucess with DiagnosticableTreeMixin implements _Sucess {
  const _$_Sucess(this.code);

  @override
  final String code;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScanState.sucess(code: $code)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScanState.sucess'))
      ..add(DiagnosticsProperty('code', code));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Sucess &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  _$SucessCopyWith<_Sucess> get copyWith =>
      __$SucessCopyWithImpl<_Sucess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() scanFail,
    required TResult Function(String code) sucess,
    required TResult Function() scanTimeout,
  }) {
    return sucess(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? scanFail,
    TResult Function(String code)? sucess,
    TResult Function()? scanTimeout,
    required TResult orElse(),
  }) {
    if (sucess != null) {
      return sucess(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ScanFail value) scanFail,
    required TResult Function(_Sucess value) sucess,
    required TResult Function(_ScanTimeout value) scanTimeout,
  }) {
    return sucess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ScanFail value)? scanFail,
    TResult Function(_Sucess value)? sucess,
    TResult Function(_ScanTimeout value)? scanTimeout,
    required TResult orElse(),
  }) {
    if (sucess != null) {
      return sucess(this);
    }
    return orElse();
  }
}

abstract class _Sucess implements ScanState {
  const factory _Sucess(String code) = _$_Sucess;

  String get code => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SucessCopyWith<_Sucess> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ScanTimeoutCopyWith<$Res> {
  factory _$ScanTimeoutCopyWith(
          _ScanTimeout value, $Res Function(_ScanTimeout) then) =
      __$ScanTimeoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$ScanTimeoutCopyWithImpl<$Res> extends _$ScanStateCopyWithImpl<$Res>
    implements _$ScanTimeoutCopyWith<$Res> {
  __$ScanTimeoutCopyWithImpl(
      _ScanTimeout _value, $Res Function(_ScanTimeout) _then)
      : super(_value, (v) => _then(v as _ScanTimeout));

  @override
  _ScanTimeout get _value => super._value as _ScanTimeout;
}

/// @nodoc

class _$_ScanTimeout with DiagnosticableTreeMixin implements _ScanTimeout {
  const _$_ScanTimeout();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScanState.scanTimeout()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ScanState.scanTimeout'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ScanTimeout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() scanFail,
    required TResult Function(String code) sucess,
    required TResult Function() scanTimeout,
  }) {
    return scanTimeout();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? scanFail,
    TResult Function(String code)? sucess,
    TResult Function()? scanTimeout,
    required TResult orElse(),
  }) {
    if (scanTimeout != null) {
      return scanTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ScanFail value) scanFail,
    required TResult Function(_Sucess value) sucess,
    required TResult Function(_ScanTimeout value) scanTimeout,
  }) {
    return scanTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ScanFail value)? scanFail,
    TResult Function(_Sucess value)? sucess,
    TResult Function(_ScanTimeout value)? scanTimeout,
    required TResult orElse(),
  }) {
    if (scanTimeout != null) {
      return scanTimeout(this);
    }
    return orElse();
  }
}

abstract class _ScanTimeout implements ScanState {
  const factory _ScanTimeout() = _$_ScanTimeout;
}
