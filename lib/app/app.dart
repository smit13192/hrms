import 'package:flutter/material.dart';
import 'package:hrms/src/constant/app_material_color.dart';
import 'package:hrms/src/router/app_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'HRMS',
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.instance,
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: AppMaterialColor.materialColor,
        brightness: Brightness.light,
      ),
    );
  }
}
