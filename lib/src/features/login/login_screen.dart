import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrms/src/features/login/controller/login_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut<LoginController>(() => LoginController());
    return const LoginView();
  }
}

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
