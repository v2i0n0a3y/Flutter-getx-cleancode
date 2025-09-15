import 'package:get/get.dart';
import 'package:getxcleancode/res/routes/routes_name.dart';
import 'package:getxcleancode/view/splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
            name: RoutesName.splashScreen,
            page: () => const SplashScreen(),
            transition: Transition.leftToRightWithFade)
      ];
}
