import 'package:freezed_annotation/freezed_annotation.dart';
part 'token_failure.freezed.dart';
@freezed
class TokenFailure with _$TokenFailure {
 const factory TokenFailure.serverError() = ServerError;
}
