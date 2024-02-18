import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrms/src/constant/constant.dart';
import 'package:hrms/src/controller/authentication_service.dart';
import 'package:hrms/src/screen/network_screen.dart';
import 'package:hrms/src/widget/widget.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const NetworkScreen(child: HomeView());
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final authenticationService = Get.find<AuthenticationService>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    authenticationService.profile();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        key: scaffoldKey,
        drawer: const Drawer(),
        backgroundColor: AppColor.scaffoldBackgroundColor,
        body: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (notification) {
            notification.disallowIndicator();
            return false;
          },
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                leading: GestureDetector(
                  onTap: () {
                    scaffoldKey.currentState?.openDrawer();
                  },
                  child: const Icon(
                    Icons.menu,
                    size: 30,
                    color: AppColor.primaryColor,
                  ),
                ),
                backgroundColor: AppColor.scaffoldBackgroundColor,
                floating: true,
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const GapH(10),
                      const AppText(
                        'Hello, Good Morning',
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                      const GapH(5),
                      AppText(
                        '${authenticationService.user.value.firstName ?? ''} ${authenticationService.user.value.lastName ?? ''}',
                        fontSize: 12.5.sp,
                        color: AppColor.primaryColor,
                      ),
                    ],
                  ),
                ),
              ),
              DecoratedSliver(
                decoration: const BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                sliver: SliverPadding(
                  padding: EdgeInsets.only(
                    top: 5.h,
                    left: 5.w,
                    right: 5.w,
                    bottom: 5.h,
                  ),
                  sliver: SliverGrid(
                    delegate: SliverChildListDelegate([
                      Container(
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ]),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 7.5.w,
                      mainAxisSpacing: 7.5.w,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
