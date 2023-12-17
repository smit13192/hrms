import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms/src/constant/app_color.dart';
import 'package:hrms/src/constant/app_image.dart';
import 'package:hrms/src/router/app_routes.dart';
import 'package:hrms/src/utils/size.dart';
import 'package:hrms/src/widget/app_elevated_button.dart';
import 'package:hrms/src/widget/app_outlined_button.dart';
import 'package:hrms/src/widget/gap.dart';

class ChoiceScreen extends StatelessWidget {
  const ChoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GapH(150.h),
              Image.asset(
                AppImage.choice,
                height: 268.h,
                width: 293.w,
                fit: BoxFit.cover,
              ),
              GapH(80.h),
              const Text(
                'Optimize Workers',
                style: TextStyle(
                  fontSize: 35,
                  color: AppColor.primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              GapH(10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: const Text(
                  'HR Management made easily, oraganise your daily working routing easily',
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColor.black,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              GapH(40.h),
              AppElevatedButton(
                text: 'Sign In',
                onPressed: () {
                  context.pushNamed(AppRoutes.signIn.name);
                },
              ),
              const GapH(10),
              AppOutlinedButton(
                text: 'Sign Up',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
