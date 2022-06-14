// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:connectivity_plus/connectivity_plus.dart' as _i16;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i26;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i18;
import 'application/connect/connectiv_class.dart' as _i3;
import 'application/connect/connectivity_cubit.dart' as _i15;
import 'application/horaire/horaire_cubit.dart' as _i6;
import 'application/news/bloc/watcher_news_bloc.dart' as _i25;
import 'application/scan/scan_bloc.dart' as _i17;
import 'application/token/user_token_actor/user_token_actor_bloc.dart' as _i20;
import 'application/token/user_token_watcher/user_token_bloc.dart' as _i21;
import 'application/user_actor/user_actor_bloc.dart' as _i19;
import 'application/user_watcher_me/user_watcher_me_bloc.dart' as _i23;
import 'application/watch_all_users/watch_all_users_bloc.dart' as _i24;
import 'application/watch_all_users_present/user_watch_all_bloc.dart' as _i22;
import 'domain/auth/i_auth_facade.dart' as _i7;
import 'domain/news/i_news_repository.dart' as _i9;
import 'domain/token/i_token_repository.dart' as _i11;
import 'domain/users/i_user_repository.dart' as _i13;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i8;
import 'infrastructure/core/firebase_injectable_module.dart' as _i27;
import 'infrastructure/news/news_repository.dart' as _i10;
import 'infrastructure/token/token_repository.dart' as _i12;
import 'infrastructure/users/user_repository.dart'
    as _i14; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i6.HoraireCubit>(() => _i6.HoraireCubit());
  gh.lazySingleton<_i7.IAuthFacade>(
      () => _i8.FirebaseAuthFacade(get<_i4.FirebaseAuth>()));
  gh.lazySingleton<_i9.INewsRepository>(() => _i10.Newsrepository());
  gh.lazySingleton<_i11.ITokenRepository>(
      () => _i12.TokenRepository(get<_i5.FirebaseFirestore>()));
  gh.lazySingleton<_i13.IUserRepository>(() => _i14.UserRepository(
      get<_i5.FirebaseFirestore>(), get<_i4.FirebaseAuth>()));
  gh.factory<_i15.InternetCubit>(
      () => _i15.InternetCubit(connectivity: get<_i16.Connectivity>()));
  gh.factory<_i17.ScanBloc>(() => _i17.ScanBloc());
  gh.factory<_i18.SignInFormBloc>(
      () => _i18.SignInFormBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i19.UserActorBloc>(
      () => _i19.UserActorBloc(get<_i13.IUserRepository>()));
  gh.factory<_i20.UserTokenActorBloc>(
      () => _i20.UserTokenActorBloc(get<_i11.ITokenRepository>()));
  gh.factory<_i21.UserTokenBloc>(
      () => _i21.UserTokenBloc(get<_i11.ITokenRepository>()));
  gh.factory<_i22.UserWatchAllBloc>(
      () => _i22.UserWatchAllBloc(get<_i13.IUserRepository>()));
  gh.factory<_i23.UserWatcherMeBloc>(
      () => _i23.UserWatcherMeBloc(get<_i13.IUserRepository>()));
  gh.factory<_i24.WatchAllUsersBloc>(
      () => _i24.WatchAllUsersBloc(get<_i13.IUserRepository>()));
  gh.factory<_i25.WatcherNewsBloc>(
      () => _i25.WatcherNewsBloc(get<_i9.INewsRepository>()));
  gh.factory<_i26.AuthBloc>(() => _i26.AuthBloc(get<_i7.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i27.FirebaseInjectableModule {}
