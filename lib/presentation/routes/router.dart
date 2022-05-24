import 'package:apptest/presentation/home/home_page.dart';
import 'package:apptest/presentation/scan/scan_page.dart';
import 'package:apptest/presentation/sign_in/sign_in_page.dart';
import 'package:apptest/presentation/sign_in/widgets/reset_password/reset_password_page.dart';
import 'package:apptest/presentation/sign_in/widgets/reset_password/succeful_message_page.dart';
import 'package:apptest/presentation/splash/splash_page.dart';
import 'package:apptest/presentation/villa/contact_hours_page.dart';
import 'package:apptest/presentation/villa/news/post_page.dart';
import 'package:apptest/presentation/villa/users/user_manage_form.dart';
import 'package:apptest/presentation/villa/users/user_present_page.dart';
// ignore: depend_on_referenced_packages
import 'package:auto_route/auto_route.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage),
    AutoRoute(page: HomePage),
    AutoRoute(page: UserManagePage),
    AutoRoute(page: UserPresentPage),
    AutoRoute(page: ContactHoursPage),
    CustomRoute(
      page: ResetPasswordPage,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    AutoRoute(page: SuccefulMessagePage),
    CustomRoute(
      page: PostPage,
      transitionsBuilder: TransitionsBuilders.slideRight,
    ),
    AutoRoute(page: ScanPage),
  ],
)
class $AppRouter {}
