// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:wordpress_api/wordpress_api.dart' as _i11;

import '../home/home_page.dart' as _i3;
import '../scan/scan_page.dart' as _i8;
import '../sign_in/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;
import '../villa/contact_hours_page.dart' as _i6;
import '../villa/news/post_page.dart' as _i7;
import '../villa/users/user_manage_form.dart' as _i4;
import '../villa/users/user_present_page.dart' as _i5;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.SignInPage());
    },
    HomeRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.HomePage());
    },
    UserManageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.UserManagePage());
    },
    UserPresentRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.UserPresentPage());
    },
    ContactHoursRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.ContactHoursPage());
    },
    PostRoute.name: (routeData) {
      final args = routeData.argsAs<PostRouteArgs>();
      return _i9.CustomPage<dynamic>(
          routeData: routeData,
          child: _i7.PostPage(args.post),
          transitionsBuilder: _i9.TransitionsBuilders.slideRight,
          opaque: true,
          barrierDismissible: false);
    },
    ScanRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.ScanPage());
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(SplashRoute.name, path: '/'),
        _i9.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i9.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i9.RouteConfig(UserManageRoute.name, path: '/user-manage-page'),
        _i9.RouteConfig(UserPresentRoute.name, path: '/user-present-page'),
        _i9.RouteConfig(ContactHoursRoute.name, path: '/contact-hours-page'),
        _i9.RouteConfig(PostRoute.name, path: '/post-page'),
        _i9.RouteConfig(ScanRoute.name, path: '/scan-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i9.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home-page');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.UserManagePage]
class UserManageRoute extends _i9.PageRouteInfo<void> {
  const UserManageRoute()
      : super(UserManageRoute.name, path: '/user-manage-page');

  static const String name = 'UserManageRoute';
}

/// generated route for
/// [_i5.UserPresentPage]
class UserPresentRoute extends _i9.PageRouteInfo<void> {
  const UserPresentRoute()
      : super(UserPresentRoute.name, path: '/user-present-page');

  static const String name = 'UserPresentRoute';
}

/// generated route for
/// [_i6.ContactHoursPage]
class ContactHoursRoute extends _i9.PageRouteInfo<void> {
  const ContactHoursRoute()
      : super(ContactHoursRoute.name, path: '/contact-hours-page');

  static const String name = 'ContactHoursRoute';
}

/// generated route for
/// [_i7.PostPage]
class PostRoute extends _i9.PageRouteInfo<PostRouteArgs> {
  PostRoute({required _i11.Post post})
      : super(PostRoute.name,
            path: '/post-page', args: PostRouteArgs(post: post));

  static const String name = 'PostRoute';
}

class PostRouteArgs {
  const PostRouteArgs({required this.post});

  final _i11.Post post;

  @override
  String toString() {
    return 'PostRouteArgs{post: $post}';
  }
}

/// generated route for
/// [_i8.ScanPage]
class ScanRoute extends _i9.PageRouteInfo<void> {
  const ScanRoute() : super(ScanRoute.name, path: '/scan-page');

  static const String name = 'ScanRoute';
}
