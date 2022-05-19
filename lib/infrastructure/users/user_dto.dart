// ignore_for_file: invalid_annotation_target

import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/domain/core/value_objects.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
abstract class UserDto implements _$UserDto {
 
  const factory UserDto({
   @JsonKey(ignore: true) String? id,
    required String nom,
    required String email,
    required String genre,
    required String localite,
    required String naissance,
    required bool present,
    required String arrive

  }) = _UserDto;
 const UserDto._();
  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(id!),
      name: nom,
      email: email,
      locality: localite,
      genre: genre,
      birthDate:naissance,
      present: present,
      hour: arrive,
      
    );
  }

  factory UserDto.fromJson(Map<String, dynamic>? json) =>
      _$UserDtoFromJson(json!);

  factory UserDto.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    return UserDto.fromJson(doc.data()).copyWith(id: doc.id);
  }

    factory UserDto.fromDomain(User user) {
    return UserDto(
      id: user.id.getOrCrash(),
      nom: user.name,
      email: user.email,
      genre: user.genre,
      localite: user.locality, 
      naissance: user.birthDate,
      present: user.present,
      arrive: user.hour
    );
  }
}
