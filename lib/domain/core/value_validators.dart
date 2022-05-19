import 'package:dartz/dartz.dart';
import 'failures.dart';

//validation lastName
Either<ValueFailure<String>, String> validateLastName(String input) {
  const lastNameRegex = r"^[a-zA-Z]{1,}$";

  if (RegExp(lastNameRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidLastName(failedValue: input));
  }
  // return right(input);
}

// validation de la date de naissance
Either<ValueFailure<String>, String> validateBirthDate(String input) {
  const birthDateRegex =
      r"^(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d$";

  if (RegExp(birthDateRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidBirthDate(failedValue: input));
  }
}

//validation locality
Either<ValueFailure<String>, String> validateLocality(String input) {
  const localityRegex = r"^[a-zA-Z]{1,}$";

  if(input.isNotEmpty){
    return right(input);
  }else{
    return left(ValueFailure.invalidLocality(failedValue: input));
  }
}
  Either<ValueFailure<String>, String> valideTextField(String input) {
  if(input.isNotEmpty){
    return right(input);
  }else{
    return left(ValueFailure.invalidTextField(failedValue: input));
  }

  // if (RegExp(localityRegex).hasMatch(input)) {
  //   return right(input);
  // } else {
  //   return left(ValueFailure.invalidLocality(failedValue: input));
  // }
  // return right(input);
}

Either<ValueFailure<String>, String> validateGender(String input) {
  if (input != '') {
    return right(input);
  } else {
    return left(ValueFailure.invalidGender(failedValue: input));
  }
  // return right(input);
}

//8 caractères : 1 minuscule, 1 majuscule, 1 chiffre, 1 caractère spécial mot de passe
Either<ValueFailure<String>, String> validatePassword(String input) {
  // const passwordRegex =
      // r"""{4,}$""";
  if (input.length >=4) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPassword(failedValue: input));
  }
  // return right(input);
}

Either<ValueFailure<String>, String> validateQRCode(String input) {
  const qrCodeRegex = r"(Villa Ritter)$";

  if (RegExp(qrCodeRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidQR(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmailAddress(failedValue: input));
  }
  // return right(input);
}
