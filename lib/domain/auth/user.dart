import 'package:apptest/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
@freezed
class User with _$User {
 const factory User({
required UniqueId id,
required String name,
required String email,
required String locality,
required String genre,
required String birthDate,
required bool present,
required String hour,
 }) = _User;
}
