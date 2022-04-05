import 'package:apptest/domain/core/failures.dart';
import 'package:apptest/domain/core/value_objects.dart';
import 'package:apptest/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';

class CodeQR extends ValueObject<String>{
  @override
  final Either<ValueFailure<String>, String> value;

  factory CodeQR(String input){
    return CodeQR._(validateQRCode(input));
  }
  const CodeQR._(this.value);
}