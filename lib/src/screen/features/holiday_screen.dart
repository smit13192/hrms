import 'package:flutter/material.dart';
import 'package:hrms/src/constant/constant.dart';
import 'package:hrms/src/screen/network_screen.dart';

class HolidayScreen extends StatelessWidget {
  const HolidayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NetworkScreen(
      child: HolidayView(),
    );
  }
}

class HolidayView extends StatefulWidget {
  const HolidayView({super.key});

  @override
  State<HolidayView> createState() => _HolidayViewState();
}

class _HolidayViewState extends State<HolidayView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.scaffoldBackgroundColor,
    );
  }
}
