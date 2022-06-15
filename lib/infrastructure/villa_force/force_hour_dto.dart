import 'package:apptest/domain/core/value_objects.dart';
import 'package:apptest/domain/villa_force/force.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'force_hour_dto.freezed.dart';
part 'force_hour_dto.g.dart';

@freezed
abstract class ForceHourDto implements _$ForceHourDto {
 
  const factory ForceHourDto({
   @JsonKey(ignore: true) String? id,
    required bool open,
    required bool close,

  }) = _ForceHourDto;
 const ForceHourDto._();
  Force toDomain() {
    return Force(
      id: UniqueId.fromUniqueString(id!),
      open: open,
      close: close,
      
    );
  }

  factory ForceHourDto.fromJson(Map<String, dynamic>? json) =>
      _$ForceHourDtoFromJson(json!);

  factory ForceHourDto.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    return ForceHourDto.fromJson(doc.data()).copyWith(id: doc.id);
  }

    factory ForceHourDto.fromDomain(Force forceHour) {
    return ForceHourDto(
      id: forceHour.id.getOrCrash(),
      open: forceHour.open,
      close: forceHour.close,
    );
  }
}
