// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'watcher_news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WatcherNewsEventTearOff {
  const _$WatcherNewsEventTearOff();

  _WatchNewsStarted watchNewsStarted() {
    return const _WatchNewsStarted();
  }

  _NewsReceived newsReceived(Either<NewsFailure, KtList<Post>> failuresOrNews) {
    return _NewsReceived(
      failuresOrNews,
    );
  }
}

/// @nodoc
const $WatcherNewsEvent = _$WatcherNewsEventTearOff();

/// @nodoc
mixin _$WatcherNewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchNewsStarted,
    required TResult Function(Either<NewsFailure, KtList<Post>> failuresOrNews)
        newsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchNewsStarted,
    TResult Function(Either<NewsFailure, KtList<Post>> failuresOrNews)?
        newsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchNewsStarted,
    TResult Function(Either<NewsFailure, KtList<Post>> failuresOrNews)?
        newsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchNewsStarted value) watchNewsStarted,
    required TResult Function(_NewsReceived value) newsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchNewsStarted value)? watchNewsStarted,
    TResult Function(_NewsReceived value)? newsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchNewsStarted value)? watchNewsStarted,
    TResult Function(_NewsReceived value)? newsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatcherNewsEventCopyWith<$Res> {
  factory $WatcherNewsEventCopyWith(
          WatcherNewsEvent value, $Res Function(WatcherNewsEvent) then) =
      _$WatcherNewsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatcherNewsEventCopyWithImpl<$Res>
    implements $WatcherNewsEventCopyWith<$Res> {
  _$WatcherNewsEventCopyWithImpl(this._value, this._then);

  final WatcherNewsEvent _value;
  // ignore: unused_field
  final $Res Function(WatcherNewsEvent) _then;
}

/// @nodoc
abstract class _$WatchNewsStartedCopyWith<$Res> {
  factory _$WatchNewsStartedCopyWith(
          _WatchNewsStarted value, $Res Function(_WatchNewsStarted) then) =
      __$WatchNewsStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchNewsStartedCopyWithImpl<$Res>
    extends _$WatcherNewsEventCopyWithImpl<$Res>
    implements _$WatchNewsStartedCopyWith<$Res> {
  __$WatchNewsStartedCopyWithImpl(
      _WatchNewsStarted _value, $Res Function(_WatchNewsStarted) _then)
      : super(_value, (v) => _then(v as _WatchNewsStarted));

  @override
  _WatchNewsStarted get _value => super._value as _WatchNewsStarted;
}

/// @nodoc

class _$_WatchNewsStarted implements _WatchNewsStarted {
  const _$_WatchNewsStarted();

  @override
  String toString() {
    return 'WatcherNewsEvent.watchNewsStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchNewsStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchNewsStarted,
    required TResult Function(Either<NewsFailure, KtList<Post>> failuresOrNews)
        newsReceived,
  }) {
    return watchNewsStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchNewsStarted,
    TResult Function(Either<NewsFailure, KtList<Post>> failuresOrNews)?
        newsReceived,
  }) {
    return watchNewsStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchNewsStarted,
    TResult Function(Either<NewsFailure, KtList<Post>> failuresOrNews)?
        newsReceived,
    required TResult orElse(),
  }) {
    if (watchNewsStarted != null) {
      return watchNewsStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchNewsStarted value) watchNewsStarted,
    required TResult Function(_NewsReceived value) newsReceived,
  }) {
    return watchNewsStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchNewsStarted value)? watchNewsStarted,
    TResult Function(_NewsReceived value)? newsReceived,
  }) {
    return watchNewsStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchNewsStarted value)? watchNewsStarted,
    TResult Function(_NewsReceived value)? newsReceived,
    required TResult orElse(),
  }) {
    if (watchNewsStarted != null) {
      return watchNewsStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchNewsStarted implements WatcherNewsEvent {
  const factory _WatchNewsStarted() = _$_WatchNewsStarted;
}

/// @nodoc
abstract class _$NewsReceivedCopyWith<$Res> {
  factory _$NewsReceivedCopyWith(
          _NewsReceived value, $Res Function(_NewsReceived) then) =
      __$NewsReceivedCopyWithImpl<$Res>;
  $Res call({Either<NewsFailure, KtList<Post>> failuresOrNews});
}

/// @nodoc
class __$NewsReceivedCopyWithImpl<$Res>
    extends _$WatcherNewsEventCopyWithImpl<$Res>
    implements _$NewsReceivedCopyWith<$Res> {
  __$NewsReceivedCopyWithImpl(
      _NewsReceived _value, $Res Function(_NewsReceived) _then)
      : super(_value, (v) => _then(v as _NewsReceived));

  @override
  _NewsReceived get _value => super._value as _NewsReceived;

  @override
  $Res call({
    Object? failuresOrNews = freezed,
  }) {
    return _then(_NewsReceived(
      failuresOrNews == freezed
          ? _value.failuresOrNews
          : failuresOrNews // ignore: cast_nullable_to_non_nullable
              as Either<NewsFailure, KtList<Post>>,
    ));
  }
}

/// @nodoc

class _$_NewsReceived implements _NewsReceived {
  const _$_NewsReceived(this.failuresOrNews);

  @override
  final Either<NewsFailure, KtList<Post>> failuresOrNews;

  @override
  String toString() {
    return 'WatcherNewsEvent.newsReceived(failuresOrNews: $failuresOrNews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewsReceived &&
            (identical(other.failuresOrNews, failuresOrNews) ||
                const DeepCollectionEquality()
                    .equals(other.failuresOrNews, failuresOrNews)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failuresOrNews);

  @JsonKey(ignore: true)
  @override
  _$NewsReceivedCopyWith<_NewsReceived> get copyWith =>
      __$NewsReceivedCopyWithImpl<_NewsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchNewsStarted,
    required TResult Function(Either<NewsFailure, KtList<Post>> failuresOrNews)
        newsReceived,
  }) {
    return newsReceived(failuresOrNews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchNewsStarted,
    TResult Function(Either<NewsFailure, KtList<Post>> failuresOrNews)?
        newsReceived,
  }) {
    return newsReceived?.call(failuresOrNews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchNewsStarted,
    TResult Function(Either<NewsFailure, KtList<Post>> failuresOrNews)?
        newsReceived,
    required TResult orElse(),
  }) {
    if (newsReceived != null) {
      return newsReceived(failuresOrNews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchNewsStarted value) watchNewsStarted,
    required TResult Function(_NewsReceived value) newsReceived,
  }) {
    return newsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchNewsStarted value)? watchNewsStarted,
    TResult Function(_NewsReceived value)? newsReceived,
  }) {
    return newsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchNewsStarted value)? watchNewsStarted,
    TResult Function(_NewsReceived value)? newsReceived,
    required TResult orElse(),
  }) {
    if (newsReceived != null) {
      return newsReceived(this);
    }
    return orElse();
  }
}

abstract class _NewsReceived implements WatcherNewsEvent {
  const factory _NewsReceived(
      Either<NewsFailure, KtList<Post>> failuresOrNews) = _$_NewsReceived;

  Either<NewsFailure, KtList<Post>> get failuresOrNews =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NewsReceivedCopyWith<_NewsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$WatcherNewsStateTearOff {
  const _$WatcherNewsStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(KtList<Post> listPosts) {
    return _LoadSuccess(
      listPosts,
    );
  }

  _LoadFailure loadFailure(NewsFailure newsFailure) {
    return _LoadFailure(
      newsFailure,
    );
  }
}

/// @nodoc
const $WatcherNewsState = _$WatcherNewsStateTearOff();

/// @nodoc
mixin _$WatcherNewsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Post> listPosts) loadSuccess,
    required TResult Function(NewsFailure newsFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Post> listPosts)? loadSuccess,
    TResult Function(NewsFailure newsFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Post> listPosts)? loadSuccess,
    TResult Function(NewsFailure newsFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatcherNewsStateCopyWith<$Res> {
  factory $WatcherNewsStateCopyWith(
          WatcherNewsState value, $Res Function(WatcherNewsState) then) =
      _$WatcherNewsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatcherNewsStateCopyWithImpl<$Res>
    implements $WatcherNewsStateCopyWith<$Res> {
  _$WatcherNewsStateCopyWithImpl(this._value, this._then);

  final WatcherNewsState _value;
  // ignore: unused_field
  final $Res Function(WatcherNewsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$WatcherNewsStateCopyWithImpl<$Res>
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
    return 'WatcherNewsState.initial()';
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
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Post> listPosts) loadSuccess,
    required TResult Function(NewsFailure newsFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Post> listPosts)? loadSuccess,
    TResult Function(NewsFailure newsFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Post> listPosts)? loadSuccess,
    TResult Function(NewsFailure newsFailure)? loadFailure,
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
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WatcherNewsState {
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
    extends _$WatcherNewsStateCopyWithImpl<$Res>
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
    return 'WatcherNewsState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Post> listPosts) loadSuccess,
    required TResult Function(NewsFailure newsFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Post> listPosts)? loadSuccess,
    TResult Function(NewsFailure newsFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Post> listPosts)? loadSuccess,
    TResult Function(NewsFailure newsFailure)? loadFailure,
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
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements WatcherNewsState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Post> listPosts});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$WatcherNewsStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? listPosts = freezed,
  }) {
    return _then(_LoadSuccess(
      listPosts == freezed
          ? _value.listPosts
          : listPosts // ignore: cast_nullable_to_non_nullable
              as KtList<Post>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.listPosts);

  @override
  final KtList<Post> listPosts;

  @override
  String toString() {
    return 'WatcherNewsState.loadSuccess(listPosts: $listPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.listPosts, listPosts) ||
                const DeepCollectionEquality()
                    .equals(other.listPosts, listPosts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(listPosts);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Post> listPosts) loadSuccess,
    required TResult Function(NewsFailure newsFailure) loadFailure,
  }) {
    return loadSuccess(listPosts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Post> listPosts)? loadSuccess,
    TResult Function(NewsFailure newsFailure)? loadFailure,
  }) {
    return loadSuccess?.call(listPosts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Post> listPosts)? loadSuccess,
    TResult Function(NewsFailure newsFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(listPosts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements WatcherNewsState {
  const factory _LoadSuccess(KtList<Post> listPosts) = _$_LoadSuccess;

  KtList<Post> get listPosts => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({NewsFailure newsFailure});

  $NewsFailureCopyWith<$Res> get newsFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$WatcherNewsStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? newsFailure = freezed,
  }) {
    return _then(_LoadFailure(
      newsFailure == freezed
          ? _value.newsFailure
          : newsFailure // ignore: cast_nullable_to_non_nullable
              as NewsFailure,
    ));
  }

  @override
  $NewsFailureCopyWith<$Res> get newsFailure {
    return $NewsFailureCopyWith<$Res>(_value.newsFailure, (value) {
      return _then(_value.copyWith(newsFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.newsFailure);

  @override
  final NewsFailure newsFailure;

  @override
  String toString() {
    return 'WatcherNewsState.loadFailure(newsFailure: $newsFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.newsFailure, newsFailure) ||
                const DeepCollectionEquality()
                    .equals(other.newsFailure, newsFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newsFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Post> listPosts) loadSuccess,
    required TResult Function(NewsFailure newsFailure) loadFailure,
  }) {
    return loadFailure(newsFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Post> listPosts)? loadSuccess,
    TResult Function(NewsFailure newsFailure)? loadFailure,
  }) {
    return loadFailure?.call(newsFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Post> listPosts)? loadSuccess,
    TResult Function(NewsFailure newsFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(newsFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements WatcherNewsState {
  const factory _LoadFailure(NewsFailure newsFailure) = _$_LoadFailure;

  NewsFailure get newsFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
