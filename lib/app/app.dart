import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrms/src/router/app_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      title: 'HRMS',
      debugShowCheckedModeBanner: false,
      routeInformationProvider: AppRouter.instance.routeInformationProvider,
      routeInformationParser: AppRouter.instance.routeInformationParser,
      routerDelegate: AppRouter.instance.routerDelegate,
    );
  }
}
