import 'dart:async';

import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/domain/users/i_user_repository.dart';
import 'package:apptest/domain/users/user_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'user_watch_all_event.dart';
part 'user_watch_all_state.dart';
part 'user_watch_all_bloc.freezed.dart';

@injectable
class UserWatchAllBloc extends Bloc<UserWatchAllEvent, UserWatchAllState> {
  
  UserWatchAllBloc(this._userRepository) : super(const _Initial());
    final IUserRepository _userRepository;
  StreamSubscription<Either<UserFailure, KtList<User>>>?
      _userStreamSubscription;

  @override
  Stream<UserWatchAllState> mapEventToState(UserWatchAllEvent event) async* {
    yield* event.map(
      watchAllStarted: (e) async*{
        yield const UserWatchAllState.loadInProgress();
        await _userStreamSubscription?.cancel();
         _userStreamSubscription= _userRepository.watchAllUsersPresent().listen(
          (failureOrUsers) =>add(UserWatchAllEvent.userReceived(failureOrUsers)),
        );
      }, 
      userReceived: (e) async*{
         yield e.failureOrUsers.fold(
          (f) => UserWatchAllState.loadFailure(f),
          (users) => UserWatchAllState.loadSuccess(users),
        );
      },
      );
  }
  
}
