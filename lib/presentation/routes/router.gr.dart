// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;
import 'package:wordpress_api/wordpress_api.dart' as _i13;

import '../home/home_page.dart' as _i3;
import '../home/widgets/test_page.dart' as _i9;
import '../scan/scan_page.dart' as _i10;
import '../sign_in/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;
import '../villa/contact_page.dart' as _i7;
import '../villa/news_page.dart' as _i6;
import '../villa/post_page.dart' as _i8;
import '../villa/user_manage_user.dart' as _i4;
import '../villa/user_present_page.dart' as _i5;

class AppRouter extends _i11.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.SignInPage());
    },
    HomeRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.HomePage());
    },
    UserManageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.UserManagePage());
    },
    UserPresentRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.UserPresentPage());
    },
    NewsRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.NewsPage());
    },
    ContactRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.ContactPage());
    },
    PostRoute.name: (routeData) {
      final args = routeData.argsAs<PostRouteArgs>();
      return _i11.CustomPage<dynamic>(
          routeData: routeData,
          child: _i8.PostPage(args.post, args.imageurl),
          transitionsBuilder: _i11.TransitionsBuilders.slideRight,
          opaque: true,
          barrierDismissible: false);
    },
    TestRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.TestPage());
    },
    ScanRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.ScanPage());
    }
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(SplashRoute.name, path: '/'),
        _i11.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i11.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i11.RouteConfig(UserManageRoute.name, path: '/user-manage-page'),
        _i11.RouteConfig(UserPresentRoute.name, path: '/user-present-page'),
        _i11.RouteConfig(NewsRoute.name, path: '/news-page'),
        _i11.RouteConfig(ContactRoute.name, path: '/contact-page'),
        _i11.RouteConfig(PostRoute.name, path: '/post-page'),
        _i11.RouteConfig(TestRoute.name, path: '/test-page'),
        _i11.RouteConfig(ScanRoute.name, path: '/scan-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i11.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i11.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home-page');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.UserManagePage]
class UserManageRoute extends _i11.PageRouteInfo<void> {
  const UserManageRoute()
      : super(UserManageRoute.name, path: '/user-manage-page');

  static const String name = 'UserManageRoute';
}

/// generated route for
/// [_i5.UserPresentPage]
class UserPresentRoute extends _i11.PageRouteInfo<void> {
  const UserPresentRoute()
      : super(UserPresentRoute.name, path: '/user-present-page');

  static const String name = 'UserPresentRoute';
}

/// generated route for
/// [_i6.NewsPage]
class NewsRoute extends _i11.PageRouteInfo<void> {
  const NewsRoute() : super(NewsRoute.name, path: '/news-page');

  static const String name = 'NewsRoute';
}

/// generated route for
/// [_i7.ContactPage]
class ContactRoute extends _i11.PageRouteInfo<void> {
  const ContactRoute() : super(ContactRoute.name, path: '/contact-page');

  static const String name = 'ContactRoute';
}

/// generated route for
/// [_i8.PostPage]
class PostRoute extends _i11.PageRouteInfo<PostRouteArgs> {
  PostRoute({required _i13.Post post, required String imageurl})
      : super(PostRoute.name,
            path: '/post-page',
            args: PostRouteArgs(post: post, imageurl: imageurl));

  static const String name = 'PostRoute';
}

class PostRouteArgs {
  const PostRouteArgs({required this.post, required this.imageurl});

  final _i13.Post post;

  final String imageurl;

  @override
  String toString() {
    return 'PostRouteArgs{post: $post, imageurl: $imageurl}';
  }
}

/// generated route for
/// [_i9.TestPage]
class TestRoute extends _i11.PageRouteInfo<void> {
  const TestRoute() : super(TestRoute.name, path: '/test-page');

  static const String name = 'TestRoute';
}

/// generated route for
/// [_i10.ScanPage]
class ScanRoute extends _i11.PageRouteInfo<void> {
  const ScanRoute() : super(ScanRoute.name, path: '/scan-page');

  static const String name = 'ScanRoute';
}
