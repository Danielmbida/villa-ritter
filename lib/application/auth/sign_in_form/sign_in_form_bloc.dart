import 'dart:async';

import 'package:apptest/domain/auth/auth_failure.dart';
import 'package:apptest/domain/auth/i_auth_facade.dart';
import 'package:apptest/domain/auth/value_objects.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      lastNameChanged: (e) async* {
        yield state.copyWith(
          lastName: LastName(e.lastNameStr),
          authFailureOrSuccessOption: none(),
        );
      },
      firstNameChanged: (e) async* {
        yield state.copyWith(
          firstName: FirstName(e.fisrtNameStr),
          authFailureOrSuccessOption: none(),
        );
      },
      localityChanged: (e) async* {
        yield state.copyWith(
          locality: Locality(e.localityStr),
          authFailureOrSuccessOption: none(),
        );
      },
      emailAddressChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailAddress),
          authFailureOrSuccessOption: none(),
        );
      },
      menGenderChanged: (e) async* {
        yield state.copyWith(
          isMen: !state.isMen,
          isWommen: !state.isWommen,
        );
      },
      genderChanged: (e) async* {
        yield state.copyWith(
          gender: Gender(e.genderStr),
          authFailureOrSuccessOption: none(),
        );
      },
      wommenGenderChanged: (e) async* {
        yield state.copyWith(isWommen: !state.isWommen, isMen: !state.isMen);
      },
      switchRegisterAndLoginPressed: (e) async* {
        yield state.copyWith(
          isRegister: !state.isRegister,
          showErrorMessages: false,
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
            password: Password(e.passwordStr),
            authFailureOrSuccessOption: none());
      },
      birthDateChanged: (e) async* {
        yield state.copyWith(
          birthDate: BirthDate(e.birthDate),
          authFailureOrSuccessOption: none(),
        );
      },
      registerWithUserFields: (e) async* {
        Either<AuthFailure, Unit>? failureOrSuccess;
        final islastNameValid = state.lastName.isValid();
        final isPasswordValid = state.password.isValid();
        final isLocalityValid = state.locality.isValid();
        if (islastNameValid && isPasswordValid && isLocalityValid) {
          yield state.copyWith(
            isRegister: true,
            authFailureOrSuccessOption: none(),
          );
          //a revoir
          failureOrSuccess =
              await _authFacade.registerWithEmailAndPasswordPressed(
            emailAddress: state.emailAddress,
            password: state.password,
            name: state.lastName,
            locality: state.locality,
            birthDate: state.birthDate,
            gender: state.gender,
            present: false,
            hour: DateFormat('HH:mm').format(DateTime.now()),
          );
        }
        yield state.copyWith(
          showErrorMessages: true,
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      signInWithNameAndPasswordPressed: (e) async* {
        Either<AuthFailure, Unit>? failureOrSuccess;
        final isEmailValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();
        if (isEmailValid && isPasswordValid) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          );
          // a revoir
          failureOrSuccess = await _authFacade.signInWithEmailAndPassword(
              emailAddress: state.emailAddress, password: state.password);
        }
        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
