import 'dart:async';

import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/domain/users/i_user_repository.dart';
import 'package:apptest/domain/users/user_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'watch_all_users_event.dart';
part 'watch_all_users_state.dart';
part 'watch_all_users_bloc.freezed.dart';

@injectable
class WatchAllUsersBloc extends Bloc<WatchAllUsersEvent, WatchAllUsersState> {
  WatchAllUsersBloc(this._userRepository) : super(const _Initial());
  final IUserRepository _userRepository;
  StreamSubscription<Either<UserFailure, KtList<User>>>?
      _userStreamSubscription;

  @override
  Stream<WatchAllUsersState> mapEventToState(WatchAllUsersEvent event) async* {
    yield* event.map(
      watchAllUsersStarted: (e) async* {
        yield const WatchAllUsersState.loadInProgress();
        await _userStreamSubscription?.cancel();
        _userStreamSubscription = _userRepository.watchAllUsers().listen(
              (failureOrUsers) => add(
                WatchAllUsersEvent.usersReceived(failureOrUsers),
              ),
            );
      },
      usersReceived: (e) async* {
        yield e.failureOrUsers.fold(
          (f) => WatchAllUsersState.loadFailure(f),
          (users) => WatchAllUsersState.loadSuccess(users),
        );
      },
    );
  }
}
