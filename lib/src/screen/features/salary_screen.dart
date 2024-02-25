import 'package:flutter/material.dart';
import 'package:hrms/src/constant/constant.dart';
import 'package:hrms/src/screen/network_screen.dart';

class SalaryScreen extends StatelessWidget {
  const SalaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NetworkScreen(
      child: SalaryView(),
    );
  }
}

class SalaryView extends StatefulWidget {
  const SalaryView({super.key});

  @override
  State<SalaryView> createState() => _SalaryViewState();
}

class _SalaryViewState extends State<SalaryView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.scaffoldBackgroundColor,
    );
  }
}
