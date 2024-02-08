import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:hrms/src/constant/app_material_color.dart';
import 'package:hrms/src/constant/app_string.dart';
import 'package:hrms/src/bindings/auth_binding.dart';
import 'package:hrms/src/router/pages.dart';
import 'package:hrms/src/router/routes.dart';
import 'package:sizer/sizer.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          title: 'HRMS',
          debugShowCheckedModeBanner: false,
          getPages: pages,
          initialBinding: AuthBinding(),
          initialRoute: Routes.splash,
          builder: EasyLoading.init(),
          theme: ThemeData(
            fontFamily: AppString.fontFamily,
            useMaterial3: false,
            primarySwatch: AppMaterialColor.materialColor,
            brightness: Brightness.light,
          ),
        );
      },
    );
  }
}
