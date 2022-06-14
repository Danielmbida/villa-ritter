import 'package:apptest/domain/auth/auth_failure.dart';
import 'package:apptest/domain/auth/i_auth_facade.dart';
import 'package:apptest/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<_LastNameChanged>((event, emit) {
      emit(
        state.copyWith(
          lastName: LastName(event.lastNameStr),
          authFailureOrSuccessOption: none(),
        ),
      );
    });
    on<_FirstNameChanged>((event, emit) {
      emit(
        state.copyWith(
          firstName: FirstName(event.fisrtNameStr),
          authFailureOrSuccessOption: none(),
        ),
      );
    });
    on<_LocalityChanged>((event, emit) {
      emit(
        state.copyWith(
          locality: Locality(event.localityStr),
          authFailureOrSuccessOption: none(),
        ),
      );
    });
    on<_EmailAddressChanged>((event, emit) {
      emit(
        state.copyWith(
          emailAddress: EmailAddress(event.emailAddress),
          authFailureOrSuccessOption: none(),
        ),
      );
    });

    on<_PasswordChanged>((event, emit) {
      emit(
        state.copyWith(
          password: Password(event.passwordStr),
          authFailureOrSuccessOption: none(),
        ),
      );
    });
    on<_BirthDateChanged>((event, emit) {
      emit(
        state.copyWith(
          birthDate: BirthDate(event.birthDate),
          authFailureOrSuccessOption: none(),
        ),
      );
    });
    on<_GenderChanged>((event, emit) {
      emit(
        state.copyWith(
          gender: Gender(event.genderStr),
          authFailureOrSuccessOption: none(),
        ),
      );
    });

    on<_SwitchRegisterAndLoginPressed>((event, emit) {
      emit(
        state.copyWith(
          isRegister: !state.isRegister,
          showErrorMessages: false,
        ),
      );
    });

    on<_ResetPasswordWithEmailPressed>((event, emit) async {
      Either<AuthFailure, Unit>? failureOrSuccess;
      final isEmailValid = state.emailAddress.isValid();
      if (isEmailValid) {
        emit(
          state.copyWith(
            authFailureOrSuccessOption: none(),
          ),
        );
        failureOrSuccess = await _authFacade.resetPasswordWithEmail(
          emailAddress: state.emailAddress,
        );
      }
      emit(
        state.copyWith(
          showErrorMessages: true,
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        ),
      );
    });

    on<_RegisterWithUserFields>((event, emit) async {
      Either<AuthFailure, Unit>? failureOrSuccess;
      final isEmailValid = state.emailAddress.isValid();
      final isPasswordValid = state.password.isValid();
      final islastNameValid = state.lastName.isValid();

      final isLocalityValid = state.locality.isValid();
      if (islastNameValid &&
          isPasswordValid &&
          isLocalityValid &&
          isEmailValid) {
        emit(
          state.copyWith(
            isRegister: true,
            authFailureOrSuccessOption: none(),
          ),
        );
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
          closeByAdmin: false
          
        );
      }
      emit(
        state.copyWith(
          showErrorMessages: true,
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        ),
      );
    });
    on<_SignInWithNameAndPasswordPressed>(
      (event, emit) async {
        Either<AuthFailure, Unit>? failureOrSuccess;
        final isEmailValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();
        if (isEmailValid && isPasswordValid) {
          emit(
            state.copyWith(
              isSubmitting: true,
              authFailureOrSuccessOption: none(),
            ),
          );
          failureOrSuccess = await _authFacade.signInWithEmailAndPassword(
            emailAddress: state.emailAddress,
            password: state.password,
          );
        }
        emit(
          state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            authFailureOrSuccessOption: optionOf(failureOrSuccess),
          ),
        );
      },
    );
  }
}
