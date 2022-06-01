// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:connectivity_plus/connectivity_plus.dart' as _i13;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i21;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i15;
import 'application/connect/connectiv_class.dart' as _i3;
import 'application/connect/connectivity_cubit.dart' as _i12;
import 'application/news/bloc/watcher_news_bloc.dart' as _i20;
import 'application/scan/scan_bloc.dart' as _i14;
import 'application/user_actor/user_actor_bloc.dart' as _i16;
import 'application/user_watcher_me/user_watcher_me_bloc.dart' as _i18;
import 'application/watch_all_users/watch_all_users_bloc.dart' as _i19;
import 'application/watch_all_users_present/user_watch_all_bloc.dart' as _i17;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/news/i_news_repository.dart' as _i8;
import 'domain/users/i_user_repository.dart' as _i10;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i7;
import 'infrastructure/core/firebase_injectable_module.dart' as _i22;
import 'infrastructure/news/news_repository.dart' as _i9;
import 'infrastructure/users/user_repository.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<_i3.Connectiv>(() => _i3.Connectiv());
  gh.lazySingleton<_i4.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.factory<_i5.FirebaseFirestore>(
      () => firebaseInjectableModule.firebaseFirestore);
  gh.lazySingleton<_i6.IAuthFacade>(
      () => _i7.FirebaseAuthFacade(get<_i4.FirebaseAuth>()));
  gh.lazySingleton<_i8.INewsRepository>(() => _i9.Newsrepository());
  gh.lazySingleton<_i10.IUserRepository>(() => _i11.UserRepository(
      get<_i5.FirebaseFirestore>(), get<_i4.FirebaseAuth>()));
  gh.factory<_i12.InternetCubit>(
      () => _i12.InternetCubit(connectivity: get<_i13.Connectivity>()));
  gh.factory<_i14.ScanBloc>(() => _i14.ScanBloc());
  gh.factory<_i15.SignInFormBloc>(
      () => _i15.SignInFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i16.UserActorBloc>(
      () => _i16.UserActorBloc(get<_i10.IUserRepository>()));
  gh.factory<_i17.UserWatchAllBloc>(
      () => _i17.UserWatchAllBloc(get<_i10.IUserRepository>()));
  gh.factory<_i18.UserWatcherMeBloc>(
      () => _i18.UserWatcherMeBloc(get<_i10.IUserRepository>()));
  gh.factory<_i19.WatchAllUsersBloc>(
      () => _i19.WatchAllUsersBloc(get<_i10.IUserRepository>()));
  gh.factory<_i20.WatcherNewsBloc>(
      () => _i20.WatcherNewsBloc(get<_i8.INewsRepository>()));
  gh.factory<_i21.AuthBloc>(() => _i21.AuthBloc(get<_i6.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i22.FirebaseInjectableModule {}
