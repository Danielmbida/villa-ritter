part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required LastName lastName,
    required FirstName firstName,
    required Locality locality,
    required EmailAddress emailAddress,
    required BirthDate birthDate,
    required Gender gender,
    required Password password,
    required bool showErrorMessages,
    required bool isSubmitting,
    required bool isMen,
    required bool isWommen,
    
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,

    //Register
    required bool isRegister,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
      firstName: FirstName(''),
      lastName: LastName(''),
      locality: Locality(''),
      emailAddress: EmailAddress(''),
      birthDate: BirthDate(''),
      gender: Gender(''),
      password: Password(''),
      showErrorMessages: false,
      isSubmitting: false,
      isRegister: false,
      isMen: true,
      isWommen: false,
      authFailureOrSuccessOption: none(),);


}
