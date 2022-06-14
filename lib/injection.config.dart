// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:connectivity_plus/connectivity_plus.dart' as _i17;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/admin_action/bloc/admin_action_bloc.dart' as _i3;
import 'application/auth/auth_bloc.dart' as _i27;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i19;
import 'application/connect/connectiv_class.dart' as _i4;
import 'application/connect/connectivity_cubit.dart' as _i16;
import 'application/horaire/horaire_cubit.dart' as _i7;
import 'application/news/bloc/watcher_news_bloc.dart' as _i26;
import 'application/scan/scan_bloc.dart' as _i18;
import 'application/token/user_token_actor/user_token_actor_bloc.dart' as _i21;
import 'application/token/user_token_watcher/user_token_bloc.dart' as _i22;
import 'application/user_actor/user_actor_bloc.dart' as _i20;
import 'application/user_watcher_me/user_watcher_me_bloc.dart' as _i24;
import 'application/watch_all_users/watch_all_users_bloc.dart' as _i25;
import 'application/watch_all_users_present/user_watch_all_bloc.dart' as _i23;
import 'domain/auth/i_auth_facade.dart' as _i8;
import 'domain/news/i_news_repository.dart' as _i10;
import 'domain/token/i_token_repository.dart' as _i12;
import 'domain/users/i_user_repository.dart' as _i14;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i9;
import 'infrastructure/core/firebase_injectable_module.dart' as _i28;
import 'infrastructure/news/news_repository.dart' as _i11;
import 'infrastructure/token/token_repository.dart' as _i13;
import 'infrastructure/users/user_repository.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<_i3.AdminActionBloc>(() => _i3.AdminActionBloc());
  gh.factory<_i4.Connectiv>(() => _i4.Connectiv());
  gh.lazySingleton<_i5.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.factory<_i6.FirebaseFirestore>(
      () => firebaseInjectableModule.firebaseFirestore);
  gh.factory<_i7.HoraireCubit>(() => _i7.HoraireCubit());
  gh.lazySingleton<_i8.IAuthFacade>(
      () => _i9.FirebaseAuthFacade(get<_i5.FirebaseAuth>()));
  gh.lazySingleton<_i10.INewsRepository>(() => _i11.Newsrepository());
  gh.lazySingleton<_i12.ITokenRepository>(
      () => _i13.TokenRepository(get<_i6.FirebaseFirestore>()));
  gh.lazySingleton<_i14.IUserRepository>(() => _i15.UserRepository(
      get<_i6.FirebaseFirestore>(), get<_i5.FirebaseAuth>()));
  gh.factory<_i16.InternetCubit>(
      () => _i16.InternetCubit(connectivity: get<_i17.Connectivity>()));
  gh.factory<_i18.ScanBloc>(() => _i18.ScanBloc());
  gh.factory<_i19.SignInFormBloc>(
      () => _i19.SignInFormBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i20.UserActorBloc>(
      () => _i20.UserActorBloc(get<_i14.IUserRepository>()));
  gh.factory<_i21.UserTokenActorBloc>(
      () => _i21.UserTokenActorBloc(get<_i12.ITokenRepository>()));
  gh.factory<_i22.UserTokenBloc>(
      () => _i22.UserTokenBloc(get<_i12.ITokenRepository>()));
  gh.factory<_i23.UserWatchAllBloc>(
      () => _i23.UserWatchAllBloc(get<_i14.IUserRepository>()));
  gh.factory<_i24.UserWatcherMeBloc>(
      () => _i24.UserWatcherMeBloc(get<_i14.IUserRepository>()));
  gh.factory<_i25.WatchAllUsersBloc>(
      () => _i25.WatchAllUsersBloc(get<_i14.IUserRepository>()));
  gh.factory<_i26.WatcherNewsBloc>(
      () => _i26.WatcherNewsBloc(get<_i10.INewsRepository>()));
  gh.factory<_i27.AuthBloc>(() => _i27.AuthBloc(get<_i8.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i28.FirebaseInjectableModule {}
