import 'package:apptest/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'token.freezed.dart';

@freezed
class Token with _$Token {
  const factory Token({
    required UniqueId id,
    required String token,
  }) = _Token;
}
