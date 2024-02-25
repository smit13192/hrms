import 'package:flutter/material.dart';
import 'package:hrms/src/constant/constant.dart';
import 'package:hrms/src/screen/network_screen.dart';

class LeavesScreen extends StatelessWidget {
  const LeavesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NetworkScreen(
      child: LeavesView(),
    );
  }
}

class LeavesView extends StatefulWidget {
  const LeavesView({super.key});

  @override
  State<LeavesView> createState() => _LeavesViewState();
}

class _LeavesViewState extends State<LeavesView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.scaffoldBackgroundColor,
    );
  }
}
