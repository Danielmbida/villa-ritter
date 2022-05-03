// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:wordpress_api/wordpress_api.dart' as _i13;

import '../home/home_page.dart' as _i5;
import '../home/widgets/test_page.dart' as _i11;
import '../scan/scan_page.dart' as _i12;
import '../sign_in/sign_in_page.dart' as _i4;
import '../splash/splash_page.dart' as _i3;
import '../villa/contact_page.dart' as _i9;
import '../villa/news_page.dart' as _i8;
import '../villa/post_page.dart' as _i10;
import '../villa/user_manage_user.dart' as _i6;
import '../villa/user_present_page.dart' as _i7;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.SplashPage();
        }),
    SignInRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.SignInPage();
        }),
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.HomePage();
        }),
    UserManageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.UserManagePage();
        }),
    UserPresentRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.UserPresentPage();
        }),
    NewsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.NewsPage();
        }),
    ContactRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i9.ContactPage();
        }),
    PostRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<PostRouteArgs>();
          return _i10.PostPage(args.post, args.imageurl);
        },
        transitionsBuilder: _i1.TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false),
    TestRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i11.TestPage();
        }),
    ScanRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i12.ScanPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashRoute.name, path: '/'),
        _i1.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i1.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i1.RouteConfig(UserManageRoute.name, path: '/user-manage-page'),
        _i1.RouteConfig(UserPresentRoute.name, path: '/user-present-page'),
        _i1.RouteConfig(NewsRoute.name, path: '/news-page'),
        _i1.RouteConfig(ContactRoute.name, path: '/contact-page'),
        _i1.RouteConfig(PostRoute.name, path: '/post-page'),
        _i1.RouteConfig(TestRoute.name, path: '/test-page'),
        _i1.RouteConfig(ScanRoute.name, path: '/scan-page')
      ];
}

class SplashRoute extends _i1.PageRouteInfo {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

class SignInRoute extends _i1.PageRouteInfo {
  const SignInRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/home-page');

  static const String name = 'HomeRoute';
}

class UserManageRoute extends _i1.PageRouteInfo {
  const UserManageRoute() : super(name, path: '/user-manage-page');

  static const String name = 'UserManageRoute';
}

class UserPresentRoute extends _i1.PageRouteInfo {
  const UserPresentRoute() : super(name, path: '/user-present-page');

  static const String name = 'UserPresentRoute';
}

class NewsRoute extends _i1.PageRouteInfo {
  const NewsRoute() : super(name, path: '/news-page');

  static const String name = 'NewsRoute';
}

class ContactRoute extends _i1.PageRouteInfo {
  const ContactRoute() : super(name, path: '/contact-page');

  static const String name = 'ContactRoute';
}

class PostRoute extends _i1.PageRouteInfo<PostRouteArgs> {
  PostRoute({required _i13.Post post, required String imageurl})
      : super(name,
            path: '/post-page',
            args: PostRouteArgs(post: post, imageurl: imageurl));

  static const String name = 'PostRoute';
}

class PostRouteArgs {
  const PostRouteArgs({required this.post, required this.imageurl});

  final _i13.Post post;

  final String imageurl;
}

class TestRoute extends _i1.PageRouteInfo {
  const TestRoute() : super(name, path: '/test-page');

  static const String name = 'TestRoute';
}

class ScanRoute extends _i1.PageRouteInfo {
  const ScanRoute() : super(name, path: '/scan-page');

  static const String name = 'ScanRoute';
}
