import 'package:freezed_annotation/freezed_annotation.dart';
part 'force_hour_failure.freezed.dart';
@freezed
class ForceHourFailure with _$ForceHourFailure {
 const factory ForceHourFailure.serverError() = ServerError;
}
