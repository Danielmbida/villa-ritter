// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
// Gestion des erreurs
  const factory ValueFailure.invalidFirstName({
    required T failedValue,
  }) = InvalidFirstName<T>;

  const factory ValueFailure.invalidLastName({
    required T failedValue,
  }) = InvalidLastName<T>;

  const factory ValueFailure.invalidLocality({
    required T failedValue,
  }) = InvalidLocality<T>;

  const factory ValueFailure.invalidGender({
    required T failedValue,
  }) = InvalidGender<T>;

  const factory ValueFailure.invalidPassword({
    required T failedValue,
  }) = InvalidPassword<T>;

  const factory ValueFailure.invalidQR({
    required T failedValue,
  }) = InvalidQR<T>;

  const factory ValueFailure.invalidEmailAddress({
    required T failedValue,
  }) = InvalidEmailAddress<T>;

  const factory ValueFailure.invalidBirthDate({
    required T failedValue,
  }) = InvalidBirthDate<T>;

    const factory ValueFailure.invalidTextField({
    required T failedValue,
  }) = InvalidTextField<T>;

}
