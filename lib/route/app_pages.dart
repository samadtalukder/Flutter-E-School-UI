
import 'package:flutter_e_school_ui/page/academic_management/academic_management_screen.dart';
import 'package:flutter_e_school_ui/page/home/home_screen.dart';
import 'package:flutter_e_school_ui/page/on_board/on_boarding_screen.dart';
import 'package:flutter_e_school_ui/page/splash/splash_screen.dart';
import 'package:get/get.dart';

import 'page_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.splashScreen,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: Routes.onBoarding,
      page: () => const OnBoardingScreen(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: Routes.academicManagement,
      page: () =>  AcademicManagementScreen(),
    ),
  ];
}
