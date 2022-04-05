part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.lastNameChanged(String lastNameStr) =
      _LastNameChanged;

  const factory SignInFormEvent.firstNameChanged(String fisrtNameStr) =
      _FirstNameChanged;

  const factory SignInFormEvent.passwordChanged(String passwordStr) =
      _PasswordChanged;

  const factory SignInFormEvent.menGenderChanged(bool isMen) =
      _MenGenderChanged;

  const factory SignInFormEvent.wommenGenderChanged(bool isWommen) =
      _WommenGenderChanged;

  const factory SignInFormEvent.localityChanged(String localityStr) =
      _LocalityChanged;

  const factory SignInFormEvent.emailAddressChanged(String emailAddress) =
      _EmailAddressChanged;

  const factory SignInFormEvent.birthDateChanged(String birthDate) =
      _BirthDateChanged;

  const factory SignInFormEvent.signInWithNameAndPasswordPressed() =
      _SignInWithNameAndPasswordPressed;

  const factory SignInFormEvent.genderChanged(String genderStr) =
      _GenderChanged;

//Register
  const factory SignInFormEvent.registerWithUserFields() =
      _RegisterWithUserFields;

  const factory SignInFormEvent.switchRegisterAndLoginPressed() =
      _SwitchRegisterAndLoginPressed;

}
