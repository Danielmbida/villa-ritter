// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$$_UserDtoFromJson(Map<String, dynamic> json) => _$_UserDto(
      nom: json['nom'] as String,
      email: json['email'] as String,
      genre: json['genre'] as String,
      localite: json['localite'] as String,
      naissance: json['naissance'] as String,
      present: json['present'] as bool,
      closeByAdmin: json['closeByAdmin'] as bool,
      arrive: json['arrive'] as String,
    );

Map<String, dynamic> _$$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'nom': instance.nom,
      'email': instance.email,
      'genre': instance.genre,
      'localite': instance.localite,
      'naissance': instance.naissance,
      'present': instance.present,
      'closeByAdmin': instance.closeByAdmin,
      'arrive': instance.arrive,
    };
