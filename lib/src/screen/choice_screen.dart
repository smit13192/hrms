import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrms/src/constant/app_color.dart';
import 'package:hrms/src/constant/app_image.dart';
import 'package:hrms/src/router/routes.dart';
import 'package:hrms/src/widget/app_outlined_button.dart';
import 'package:hrms/src/widget/gap.dart';
import 'package:sizer/sizer.dart';

class ChoiceScreen extends StatelessWidget {
  const ChoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GapH(10.h),
              Image.asset(
                AppImage.choice,
                height: 30.h,
                fit: BoxFit.cover,
              ),
              GapH(10.h),
              Text(
                'Optimize Workers',
                style: TextStyle(
                  fontSize: 25.sp,
                  color: AppColor.primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              GapH(3.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Text(
                  'HR Management made easily, oraganise your daily working routing easily',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColor.black,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              GapH(5.h),
              AppOutlinedButton(
                text: 'Sign In',
                onPressed: () {
                  Get.toNamed(Routes.signIn);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
