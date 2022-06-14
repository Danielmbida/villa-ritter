// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
class _$UserDtoTearOff {
  const _$UserDtoTearOff();

  _UserDto call(
      {@JsonKey(ignore: true) String? id,
      required String nom,
      required String email,
      required String genre,
      required String localite,
      required String naissance,
      required bool present,
      required bool closeByAdmin,
      required String arrive}) {
    return _UserDto(
      id: id,
      nom: nom,
      email: email,
      genre: genre,
      localite: localite,
      naissance: naissance,
      present: present,
      closeByAdmin: closeByAdmin,
      arrive: arrive,
    );
  }

  UserDto fromJson(Map<String, Object?> json) {
    return UserDto.fromJson(json);
  }
}

/// @nodoc
const $UserDto = _$UserDtoTearOff();

/// @nodoc
mixin _$UserDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get nom => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get genre => throw _privateConstructorUsedError;
  String get localite => throw _privateConstructorUsedError;
  String get naissance => throw _privateConstructorUsedError;
  bool get present => throw _privateConstructorUsedError;
  bool get closeByAdmin => throw _privateConstructorUsedError;
  String get arrive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String nom,
      String email,
      String genre,
      String localite,
      String naissance,
      bool present,
      bool closeByAdmin,
      String arrive});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res> implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  final UserDto _value;
  // ignore: unused_field
  final $Res Function(UserDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? nom = freezed,
    Object? email = freezed,
    Object? genre = freezed,
    Object? localite = freezed,
    Object? naissance = freezed,
    Object? present = freezed,
    Object? closeByAdmin = freezed,
    Object? arrive = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      nom: nom == freezed
          ? _value.nom
          : nom // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      localite: localite == freezed
          ? _value.localite
          : localite // ignore: cast_nullable_to_non_nullable
              as String,
      naissance: naissance == freezed
          ? _value.naissance
          : naissance // ignore: cast_nullable_to_non_nullable
              as String,
      present: present == freezed
          ? _value.present
          : present // ignore: cast_nullable_to_non_nullable
              as bool,
      closeByAdmin: closeByAdmin == freezed
          ? _value.closeByAdmin
          : closeByAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      arrive: arrive == freezed
          ? _value.arrive
          : arrive // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) then) =
      __$UserDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String nom,
      String email,
      String genre,
      String localite,
      String naissance,
      bool present,
      bool closeByAdmin,
      String arrive});
}

/// @nodoc
class __$UserDtoCopyWithImpl<$Res> extends _$UserDtoCopyWithImpl<$Res>
    implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(_UserDto _value, $Res Function(_UserDto) _then)
      : super(_value, (v) => _then(v as _UserDto));

  @override
  _UserDto get _value => super._value as _UserDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? nom = freezed,
    Object? email = freezed,
    Object? genre = freezed,
    Object? localite = freezed,
    Object? naissance = freezed,
    Object? present = freezed,
    Object? closeByAdmin = freezed,
    Object? arrive = freezed,
  }) {
    return _then(_UserDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      nom: nom == freezed
          ? _value.nom
          : nom // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
      localite: localite == freezed
          ? _value.localite
          : localite // ignore: cast_nullable_to_non_nullable
              as String,
      naissance: naissance == freezed
          ? _value.naissance
          : naissance // ignore: cast_nullable_to_non_nullable
              as String,
      present: present == freezed
          ? _value.present
          : present // ignore: cast_nullable_to_non_nullable
              as bool,
      closeByAdmin: closeByAdmin == freezed
          ? _value.closeByAdmin
          : closeByAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      arrive: arrive == freezed
          ? _value.arrive
          : arrive // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDto extends _UserDto {
  const _$_UserDto(
      {@JsonKey(ignore: true) this.id,
      required this.nom,
      required this.email,
      required this.genre,
      required this.localite,
      required this.naissance,
      required this.present,
      required this.closeByAdmin,
      required this.arrive})
      : super._();

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String nom;
  @override
  final String email;
  @override
  final String genre;
  @override
  final String localite;
  @override
  final String naissance;
  @override
  final bool present;
  @override
  final bool closeByAdmin;
  @override
  final String arrive;

  @override
  String toString() {
    return 'UserDto(id: $id, nom: $nom, email: $email, genre: $genre, localite: $localite, naissance: $naissance, present: $present, closeByAdmin: $closeByAdmin, arrive: $arrive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.nom, nom) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.genre, genre) &&
            const DeepCollectionEquality().equals(other.localite, localite) &&
            const DeepCollectionEquality().equals(other.naissance, naissance) &&
            const DeepCollectionEquality().equals(other.present, present) &&
            const DeepCollectionEquality()
                .equals(other.closeByAdmin, closeByAdmin) &&
            const DeepCollectionEquality().equals(other.arrive, arrive));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(nom),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(genre),
      const DeepCollectionEquality().hash(localite),
      const DeepCollectionEquality().hash(naissance),
      const DeepCollectionEquality().hash(present),
      const DeepCollectionEquality().hash(closeByAdmin),
      const DeepCollectionEquality().hash(arrive));

  @JsonKey(ignore: true)
  @override
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDtoToJson(this);
  }
}

abstract class _UserDto extends UserDto {
  const factory _UserDto(
      {@JsonKey(ignore: true) String? id,
      required String nom,
      required String email,
      required String genre,
      required String localite,
      required String naissance,
      required bool present,
      required bool closeByAdmin,
      required String arrive}) = _$_UserDto;
  const _UserDto._() : super._();

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get nom;
  @override
  String get email;
  @override
  String get genre;
  @override
  String get localite;
  @override
  String get naissance;
  @override
  bool get present;
  @override
  bool get closeByAdmin;
  @override
  String get arrive;
  @override
  @JsonKey(ignore: true)
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
