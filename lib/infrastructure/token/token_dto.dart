// ignore_for_file: invalid_annotation_target
import 'package:apptest/domain/core/value_objects.dart';
import 'package:apptest/domain/token/token.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'token_dto.freezed.dart';
part 'token_dto.g.dart';

@freezed
abstract class TokenDto implements _$TokenDto {
 
  const factory TokenDto({
   @JsonKey(ignore: true) String? id,
    required String token,
  }) = _TokenDto;
 const TokenDto._();
  Token toDomain() {
    return Token(
      id: UniqueId.fromUniqueString(id!),
      token: token,
    );
  }

  factory TokenDto.fromJson(Map<String, dynamic>? json) =>
      _$TokenDtoFromJson(json!);

  factory TokenDto.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    return TokenDto.fromJson(doc.data()).copyWith(id: doc.id);
  }

    factory TokenDto.fromDomain(Token token) {
    return TokenDto(
      id: token.id.getOrCrash(),
      token: token.token
    );
  }
}
