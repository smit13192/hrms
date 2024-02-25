import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrms/src/constant/constant.dart';
import 'package:hrms/src/widget/app_text.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sizer/sizer.dart';

class PermissionService {
  static Future<bool> galleryPermission() async {
    bool isGranted = await Permission.photos.isGranted;
    if (isGranted) return true;
    PermissionStatus status = await Permission.photos.request();
    if (status == PermissionStatus.granted) return true;
    if (status == PermissionStatus.denied) return false;
    if (status == PermissionStatus.permanentlyDenied) {
      _galleryPermissionDailog();
    }
    return false;
  }

  static Future<void> _galleryPermissionDailog() async {
    await Get.dialog(
      AlertDialog(
        title: const AppText(
          'Permission to access photos?',
          textAlign: TextAlign.left,
          fontWeight: FontWeight.w500,
        ),
        content: AppText(
          'Grant permission to access your photos in order to personalize your profile picture.',
          textAlign: TextAlign.left,
          fontSize: 13.sp,
        ),
        actions: [
          TextButton(
            onPressed: () async {
              Get.back();
              await openAppSettings();
            },
            child: AppText(
              'Yes',
              color: AppColor.primaryColor,
              fontSize: 12.sp,
            ),
          ),
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: AppText(
              'No',
              color: AppColor.primaryColor,
              fontSize: 12.sp,
            ),
          ),
        ],
      ),
      barrierDismissible: false,
    );
  }
}
