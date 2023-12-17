import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:hrms/src/constant/app_color.dart';
import 'package:hrms/src/constant/app_image.dart';
import 'package:hrms/src/features/sign_in/controller/sign_in_controller.dart';
import 'package:hrms/src/utils/size.dart';
import 'package:hrms/src/widget/app_elevated_button.dart';
import 'package:hrms/src/widget/gap.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut<SignInController>(() => SignInController());
    return const SignInView();
  }
}

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  bool rememberMe = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.scaffoldBackgroundColor,
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 15.w),
          child: GestureDetector(
            onTap: () {
              context.pop();
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: AppColor.primaryColor,
            ),
          ),
        ),
        backgroundColor: AppColor.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AppImage.logo,
              height: 220.h,
              width: 220.w,
            ),
            const Text(
              'Sign In',
              style: TextStyle(
                color: AppColor.primaryColor,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            GapH(30.h),
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: AppColor.black.withOpacity(0.70)),
              decoration: InputDecoration(
                hintText: 'Enter email',
                contentPadding: const EdgeInsets.symmetric(vertical: 20),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColor.white),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide:
                      const BorderSide(color: AppColor.primaryColor, width: 2),
                ),
                prefixIcon: const Icon(Icons.email),
                filled: true,
                fillColor: AppColor.white,
              ),
            ),
            GapH(16.h),
            TextFormField(
              controller: passwordController,
              keyboardType: TextInputType.visiblePassword,
              style: TextStyle(color: AppColor.black.withOpacity(0.70)),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 20),
                hintText: 'Enter password',
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColor.white),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide:
                      const BorderSide(color: AppColor.primaryColor, width: 2),
                ),
                prefixIcon: const Icon(Icons.lock),
                filled: true,
                fillColor: AppColor.white,
              ),
            ),
            Row(
              children: [
                Checkbox(
                  side: MaterialStateBorderSide.resolveWith(
                    (states) => const BorderSide(
                      width: 2.0,
                      color: AppColor.primaryColor,
                    ),
                  ),
                  visualDensity: VisualDensity(horizontal: -4.w, vertical: 1),
                  value: rememberMe,
                  onChanged: (value) {
                    setState(() {
                      rememberMe = !rememberMe;
                    });
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                const Text(
                  'Remember me',
                  style: TextStyle(
                    color: AppColor.black,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            AppElevatedButton(
              text: 'Sign In',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
