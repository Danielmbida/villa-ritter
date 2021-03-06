import 'dart:async';
import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/domain/users/i_user_repository.dart';
import 'package:apptest/domain/users/user_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
part 'watch_all_users_event.dart';
part 'watch_all_users_state.dart';
part 'watch_all_users_bloc.freezed.dart';

@injectable
class WatchAllUsersBloc extends Bloc<WatchAllUsersEvent, WatchAllUsersState> {
  final IUserRepository _userRepository;
  WatchAllUsersBloc(this._userRepository) : super(const _Initial()) {
    StreamSubscription<Either<UserFailure, KtList<User>>>?
        _userStreamSubscription;
    on<_WatchAllUsersStarted>((event, emit) async {
      emit(const WatchAllUsersState.loadInProgress());
      await _userStreamSubscription?.cancel();
      _userStreamSubscription = _userRepository.watchAllUsers().listen(
            (failureOrUsers) => add(
              WatchAllUsersEvent.usersReceived(failureOrUsers),
            ),
          );
    });
    on<_UsersReceived>((event, emit) {
      emit(
        event.failureOrUsers.fold(
          (f) => WatchAllUsersState.loadFailure(f),
          (users) => WatchAllUsersState.loadSuccess(users),
        ),
      );
    });
  }
}
