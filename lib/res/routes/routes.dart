import 'package:get/get.dart';
import 'package:getxcleancode/res/routes/routes_name.dart';
import 'package:getxcleancode/view/home/home_view.dart';
import 'package:getxcleancode/view/login/login_view.dart';
import 'package:getxcleancode/view/splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
            name: RoutesName.splashScreen,
            page: () => const SplashScreen(),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RoutesName.loginView,
            page: () => const LoginView(),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RoutesName.homeView,
            page: () => const HomeView(),
            transition: Transition.leftToRightWithFade)
      ];
}
