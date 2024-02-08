import 'package:get/get.dart';
import 'package:hrms/src/screen/auth/sign_in_screen.dart';
import 'package:hrms/src/screen/choice_screen.dart';
import 'package:hrms/src/screen/home/home_screen.dart';
import 'package:hrms/src/screen/splash_screen.dart';
import 'package:hrms/src/router/routes.dart';

final List<GetPage> pages = [
  GetPage(
    name: Routes.splash,
    transition: Transition.cupertino,
    page: () {
      return const SplashScreen();
    },
  ),
  GetPage(
    name: Routes.choice,
    transition: Transition.cupertino,
    page: () {
      return const ChoiceScreen();
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
