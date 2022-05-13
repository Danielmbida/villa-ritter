import 'package:apptest/presentation/home/home_page.dart';
import 'package:apptest/presentation/home/widgets/test_page.dart';
import 'package:apptest/presentation/scan/scan_page.dart';
import 'package:apptest/presentation/villa/contact_hours_page.dart';
import 'package:apptest/presentation/villa/news/news_page.dart';
import 'package:apptest/presentation/villa/news/post_page.dart';
import 'package:apptest/presentation/villa/users/user_manage_user.dart';
import 'package:apptest/presentation/villa/users/user_present_page.dart';
import 'package:auto_route/auto_route.dart';
import '../../presentation/splash/splash_page.dart';
import '../sign_in/sign_in_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage),
    AutoRoute(page: HomePage),
    AutoRoute(page: UserManagePage),
    AutoRoute(
      page: UserPresentPage,
    ),
    AutoRoute(page: NewsPage),
    AutoRoute(page: ContactHoursPage),
    CustomRoute(
      page: PostPage,
      transitionsBuilder: TransitionsBuilders.slideRight,
    ),
    AutoRoute(page: TestPage),
    AutoRoute(page: ScanPage),
  ],
)
class $AppRouter {}
