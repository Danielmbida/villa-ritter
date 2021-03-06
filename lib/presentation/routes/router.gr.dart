// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;
import 'package:wordpress_api/wordpress_api.dart' as _i14;

import '../home/home_page.dart' as _i3;
import '../home/widgets/send_notifications_page.dart' as _i7;
import '../scan/scan_page.dart' as _i11;
import '../sign_in/sign_in_page.dart' as _i2;
import '../sign_in/widgets/reset_password/reset_password_page.dart' as _i8;
import '../sign_in/widgets/reset_password/succeful_message_page.dart' as _i9;
import '../splash/splash_page.dart' as _i1;
import '../villa/contact_hours_page.dart' as _i6;
import '../villa/news/post_page.dart' as _i10;
import '../villa/users/user_manage_form.dart' as _i4;
import '../villa/users/user_present_page.dart' as _i5;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.SignInPage());
    },
    HomeRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.HomePage());
    },
    UserManageRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.UserManagePage());
    },
    UserPresentRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.UserPresentPage());
    },
    ContactHoursRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.ContactHoursPage());
    },
    SendNotificationsRoute.name: (routeData) {
      final args = routeData.argsAs<SendNotificationsRouteArgs>();
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.SendNotificationsPage(
              key: args.key, listToken: args.listToken));
    },
    ResetPasswordRoute.name: (routeData) {
      return _i12.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i8.ResetPasswordPage(),
          transitionsBuilder: _i12.TransitionsBuilders.fadeIn,
          opaque: true,
          barrierDismissible: false);
    },
    SuccefulMessageRoute.name: (routeData) {
      final args = routeData.argsAs<SuccefulMessageRouteArgs>();
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i9.SuccefulMessagePage(key: args.key, email: args.email));
    },
    PostRoute.name: (routeData) {
      final args = routeData.argsAs<PostRouteArgs>();
      return _i12.CustomPage<dynamic>(
          routeData: routeData,
          child: _i10.PostPage(args.post),
          transitionsBuilder: _i12.TransitionsBuilders.slideRight,
          opaque: true,
          barrierDismissible: false);
    },
    ScanRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.ScanPage());
    }
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(SplashRoute.name, path: '/'),
        _i12.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i12.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i12.RouteConfig(UserManageRoute.name, path: '/user-manage-page'),
        _i12.RouteConfig(UserPresentRoute.name, path: '/user-present-page'),
        _i12.RouteConfig(ContactHoursRoute.name, path: '/contact-hours-page'),
        _i12.RouteConfig(SendNotificationsRoute.name,
            path: '/send-notifications-page'),
        _i12.RouteConfig(ResetPasswordRoute.name, path: '/reset-password-page'),
        _i12.RouteConfig(SuccefulMessageRoute.name,
            path: '/succeful-message-page'),
        _i12.RouteConfig(PostRoute.name, path: '/post-page'),
        _i12.RouteConfig(ScanRoute.name, path: '/scan-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i12.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i12.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home-page');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.UserManagePage]
class UserManageRoute extends _i12.PageRouteInfo<void> {
  const UserManageRoute()
      : super(UserManageRoute.name, path: '/user-manage-page');

  static const String name = 'UserManageRoute';
}

/// generated route for
/// [_i5.UserPresentPage]
class UserPresentRoute extends _i12.PageRouteInfo<void> {
  const UserPresentRoute()
      : super(UserPresentRoute.name, path: '/user-present-page');

  static const String name = 'UserPresentRoute';
}

/// generated route for
/// [_i6.ContactHoursPage]
class ContactHoursRoute extends _i12.PageRouteInfo<void> {
  const ContactHoursRoute()
      : super(ContactHoursRoute.name, path: '/contact-hours-page');

  static const String name = 'ContactHoursRoute';
}

/// generated route for
/// [_i7.SendNotificationsPage]
class SendNotificationsRoute
    extends _i12.PageRouteInfo<SendNotificationsRouteArgs> {
  SendNotificationsRoute({_i13.Key? key, required List<String> listToken})
      : super(SendNotificationsRoute.name,
            path: '/send-notifications-page',
            args: SendNotificationsRouteArgs(key: key, listToken: listToken));

  static const String name = 'SendNotificationsRoute';
}

class SendNotificationsRouteArgs {
  const SendNotificationsRouteArgs({this.key, required this.listToken});

  final _i13.Key? key;

  final List<String> listToken;

  @override
  String toString() {
    return 'SendNotificationsRouteArgs{key: $key, listToken: $listToken}';
  }
}

/// generated route for
/// [_i8.ResetPasswordPage]
class ResetPasswordRoute extends _i12.PageRouteInfo<void> {
  const ResetPasswordRoute()
      : super(ResetPasswordRoute.name, path: '/reset-password-page');

  static const String name = 'ResetPasswordRoute';
}

/// generated route for
/// [_i9.SuccefulMessagePage]
class SuccefulMessageRoute
    extends _i12.PageRouteInfo<SuccefulMessageRouteArgs> {
  SuccefulMessageRoute({_i13.Key? key, required String email})
      : super(SuccefulMessageRoute.name,
            path: '/succeful-message-page',
            args: SuccefulMessageRouteArgs(key: key, email: email));

  static const String name = 'SuccefulMessageRoute';
}

class SuccefulMessageRouteArgs {
  const SuccefulMessageRouteArgs({this.key, required this.email});

  final _i13.Key? key;

  final String email;

  @override
  String toString() {
    return 'SuccefulMessageRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i10.PostPage]
class PostRoute extends _i12.PageRouteInfo<PostRouteArgs> {
  PostRoute({required _i14.Post post})
      : super(PostRoute.name,
            path: '/post-page', args: PostRouteArgs(post: post));

  static const String name = 'PostRoute';
}

class PostRouteArgs {
  const PostRouteArgs({required this.post});

  final _i14.Post post;

  @override
  String toString() {
    return 'PostRouteArgs{post: $post}';
  }
}

/// generated route for
/// [_i11.ScanPage]
class ScanRoute extends _i12.PageRouteInfo<void> {
  const ScanRoute() : super(ScanRoute.name, path: '/scan-page');

  static const String name = 'ScanRoute';
}
