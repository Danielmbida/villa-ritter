// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required UniqueId id,
      required String name,
      required String email,
      required String locality,
      required String genre,
      required String birthDate,
      required bool present,
      required bool closeByAdmin,
      required String hour}) {
    return _User(
      id: id,
      name: name,
      email: email,
      locality: locality,
      genre: genre,
      birthDate: birthDate,
      present: present,
      closeByAdmin: closeByAdmin,
      hour: hour,
    );
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  UniqueId get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get locality => throw _privateConstructorUsedError;
  String get genre => throw _privateConstructorUsedError;
  String get birthDate => throw _privateConstructorUsedError;
  bool get present => throw _privateConstructorUsedError;
  bool get closeByAdmin => throw _privateConstructorUsedError;
  String get hour => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      String name,
      String email,
      String locality,
      String genre,
      String birthDate,
      bool present,
      bool closeByAdmin,
      String hour});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? locality = freezed,
    Object? genre = freezed,
    Object? birthDate = freezed,
    Object? present = freezed,
    Object? closeByAdmin = freezed,
    Object? hour = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      locality: locality == freezed
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String,
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: birthDate == freezed
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String,
      present: present == freezed
          ? _value.present
          : present // ignore: cast_nullable_to_non_nullable
              as bool,
      closeByAdmin: closeByAdmin == freezed
          ? _value.closeByAdmin
          : closeByAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      hour: hour == freezed
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      String name,
      String email,
      String locality,
      String genre,
      String birthDate,
      bool present,
      bool closeByAdmin,
      String hour});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? locality = freezed,
    Object? genre = freezed,
    Object? birthDate = freezed,
    Object? present = freezed,
    Object? closeByAdmin = freezed,
    Object? hour = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      locality: locality == freezed
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String,
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: birthDate == freezed
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String,
      present: present == freezed
          ? _value.present
          : present // ignore: cast_nullable_to_non_nullable
              as bool,
      closeByAdmin: closeByAdmin == freezed
          ? _value.closeByAdmin
          : closeByAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      hour: hour == freezed
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_User implements _User {
  const _$_User(
      {required this.id,
      required this.name,
      required this.email,
      required this.locality,
      required this.genre,
      required this.birthDate,
      required this.present,
      required this.closeByAdmin,
      required this.hour});

  @override
  final UniqueId id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String locality;
  @override
  final String genre;
  @override
  final String birthDate;
  @override
  final bool present;
  @override
  final bool closeByAdmin;
  @override
  final String hour;

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, locality: $locality, genre: $genre, birthDate: $birthDate, present: $present, closeByAdmin: $closeByAdmin, hour: $hour)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.locality, locality) &&
            const DeepCollectionEquality().equals(other.genre, genre) &&
            const DeepCollectionEquality().equals(other.birthDate, birthDate) &&
            const DeepCollectionEquality().equals(other.present, present) &&
            const DeepCollectionEquality()
                .equals(other.closeByAdmin, closeByAdmin) &&
            const DeepCollectionEquality().equals(other.hour, hour));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(locality),
      const DeepCollectionEquality().hash(genre),
      const DeepCollectionEquality().hash(birthDate),
      const DeepCollectionEquality().hash(present),
      const DeepCollectionEquality().hash(closeByAdmin),
      const DeepCollectionEquality().hash(hour));

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {required UniqueId id,
      required String name,
      required String email,
      required String locality,
      required String genre,
      required String birthDate,
      required bool present,
      required bool closeByAdmin,
      required String hour}) = _$_User;

  @override
  UniqueId get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get locality;
  @override
  String get genre;
  @override
  String get birthDate;
  @override
  bool get present;
  @override
  bool get closeByAdmin;
  @override
  String get hour;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
