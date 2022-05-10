import 'dart:async';
import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/domain/users/i_user_repository.dart';
import 'package:apptest/domain/users/user_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'user_watch_all_event.dart';
part 'user_watch_all_state.dart';
part 'user_watch_all_bloc.freezed.dart';

@injectable
class UserWatchAllBloc extends Bloc<UserWatchAllEvent, UserWatchAllState> {
  final IUserRepository _userRepository;
  UserWatchAllBloc(this._userRepository) : super(const _Initial()) {
    StreamSubscription<Either<UserFailure, KtList<User>>>?
        _userStreamSubscription;

    on<_WatchAllStarted>((event, emit) async {
      emit(const UserWatchAllState.loadInProgress());
      await _userStreamSubscription?.cancel();
      _userStreamSubscription = _userRepository.watchAllUsersPresent().listen(
            (failureOrUsers) =>
                add(UserWatchAllEvent.userReceived(failureOrUsers)),
          );
    });
    on<_UsersReceived>((event, emit) {
      emit(
        event.failureOrUsers.fold(
          (f) => UserWatchAllState.loadFailure(f),
          (users) => UserWatchAllState.loadSuccess(users),
        ),
      );
    });
  }
}
