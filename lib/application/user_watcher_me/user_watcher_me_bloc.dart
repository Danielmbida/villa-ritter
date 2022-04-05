import 'dart:async';

import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/domain/users/i_user_repository.dart';
import 'package:apptest/domain/users/user_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'user_watcher_me_event.dart';
part 'user_watcher_me_state.dart';
part 'user_watcher_me_bloc.freezed.dart';

@injectable
class UserWatcherMeBloc extends Bloc<UserWatcherMeEvent, UserWatcherMeState> {
  UserWatcherMeBloc(this._userRepository) : super(const _Initial());
  final IUserRepository _userRepository;
  StreamSubscription<Either<UserFailure, KtList<User>>>?
      _userStreamSubscription;

  @override
  Stream<UserWatcherMeState> mapEventToState(UserWatcherMeEvent event) async* {
    yield* event.map(
      watcherMeStarted: (e) async* {
        yield const UserWatcherMeState.loadInProgress();
        await _userStreamSubscription?.cancel();
        _userStreamSubscription = _userRepository.watchMine().listen(
              (failureOrUsers) =>
                  add(UserWatcherMeEvent.userReceived(failureOrUsers)),
            );
      },
      userReceived: (e) async* {
        yield e.failureOrUsers.fold((f) => UserWatcherMeState.loadFailure(f),
            (user) => UserWatcherMeState.loadSuccess(user));
      },
    );
  }
}
