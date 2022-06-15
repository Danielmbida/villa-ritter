import 'package:apptest/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'force.freezed.dart'; 

@freezed
class Force with _$Force {
  const factory Force({
    required UniqueId id,
    required bool open,
    required bool close,
  }) = _Force;
}
