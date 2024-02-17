import 'package:get/get.dart';
import 'package:hrms/src/router/router.dart';
import 'package:hrms/src/screen/authentication/sign_in_screen.dart';
import 'package:hrms/src/screen/home/home_screen.dart';
import 'package:hrms/src/screen/on_boarding_screen.dart';
import 'package:hrms/src/screen/splash_screen.dart';

final List<GetPage> pages = [
  GetPage(
    name: Routes.splash,
    transition: Transition.cupertino,
    page: () {
      return const SplashScreen();
    },
  ),
  GetPage(
    name: Routes.onBoarding,
    transition: Transition.cupertino,
    page: () {
      return OnBoardingScreen();
    },
  ),
  GetPage(
    name: Routes.signIn,
    transition: Transition.cupertino,
    page: () {
      return const SignInScreen();
    },
  ),
  GetPage(
    name: Routes.home,
    transition: Transition.cupertino,
    page: () {
      return const HomeScreen();
    },
  ),
];
