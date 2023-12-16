import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms/src/features/home/home_screen.dart';
import 'package:hrms/src/features/login/login_screen.dart';
import 'package:hrms/src/features/splash/splash_screen.dart';
import 'package:hrms/src/router/app_routes.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  static GoRouter instance = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: AppRoutes.splash.path,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: AppRoutes.splash.path,
        name: AppRoutes.splash.name,
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: SplashScreen(),
          );
        },
      ),
      GoRoute(
        path: AppRoutes.login.path,
        name: AppRoutes.login.name,
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: LoginScreen(),
          );
        },
      ),
      GoRoute(
        path: AppRoutes.home.path,
        name: AppRoutes.home.name,
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: HomeScreen(),
          );
        },
      ),
    ],
  );
}
