import 'package:flutter/material.dart';
import 'package:hrms/src/constant/constant.dart';
import 'package:hrms/src/screen/network_screen.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NetworkScreen(
      child: ProjectView(),
    );
  }
}

class ProjectView extends StatefulWidget {
  const ProjectView({super.key});

  @override
  State<ProjectView> createState() => _ProjectViewState();
}

class _ProjectViewState extends State<ProjectView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.scaffoldBackgroundColor,
    );
  }
}
