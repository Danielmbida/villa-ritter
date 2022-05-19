import 'package:apptest/domain/core/failures.dart';
import 'package:apptest/domain/core/value_objects.dart';
import 'package:apptest/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';


class LastName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  //Factory constructeur --> instanciation de l'objet
  factory LastName(String input) {
    return LastName._(valideTextField(input));
  }
  
  //Constructeur privé
  const LastName._(this.value);
}

class FirstName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  //Factory constructeur --> instanciation de l'objet
  factory FirstName(String input) {
    return FirstName._(validateGender(input));
  }
  
  //Constructeur privé
  const FirstName._(this.value);
}

class Gender extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  //Factory constructeur --> instanciation de l'objet
  factory Gender(String input) {
    return Gender._(validateGender(input));
  }
  
  //Constructeur privé
  const Gender._(this.value);
}
// class Present {
//   @override
//   final bool value = false;

//   //Factory constructeur --> instanciation de l'objet
//   factory Present() {
//     return Present._(value);
//   }
  
//   //Constructeur privé
//   const Present._(this.value);
// }

class BirthDate extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  //Factory constructeur --> instanciation de l'objet
  factory BirthDate(String input) {
    return BirthDate._(validateBirthDate(input));
  }
  
  //Constructeur privé
  const BirthDate._(this.value);
}

class Locality extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  //Factory constructeur --> instanciation de l'objet
  factory Locality(String input) {
    return Locality._(valideTextField(input));
  }
  
  //Constructeur privé
  const Locality._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  
  //Factory constructeur permet de faire des constructeur logique
  // ici de valider le format du mdp 
  factory Password(String input) {
    return Password._(validatePassword(input));
  }
  const Password._(this.value);
}

class EmailAddress extends ValueObject<String>{
  @override
  final Either<ValueFailure<String>, String> value;
  factory EmailAddress(String input){
    return EmailAddress._(validateEmailAddress(input));
  }
  const EmailAddress._(this.value);
}

// abstract class Failure {}
// class InvalidEmailException implements Exception {
//   final String failedValue;
//   InvalidEmailException({required this.failedValue});
// }
// class InvalidEmailFailure implements Failure {
//   final String failedValue;
//   InvalidEmailFailure({required this.failedValue});
// }
// class InvalidPasswordFailure implements Failure {
//   final String failedValue;
//   InvalidPasswordFailure({required this.failedValue});
// }
