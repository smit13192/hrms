import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppSnackbar {
  static void showErrorSnackbar({
    String? title,
    String? message,
  }) {
    Get.showSnackbar(
      GetSnackBar(
        backgroundColor: Colors.red.withAlpha(210),
        margin: const EdgeInsets.all(16),
        barBlur: 20,
        title: title ?? 'Error',
        message: message,
        duration: const Duration(seconds: 2),
        borderRadius: 10,
      ),
    );
  }

  static void showSuccessSnackbar({
    String? title,
    String? message,
  }) {
    Get.showSnackbar(
      GetSnackBar(
        backgroundColor: Colors.green.withAlpha(210),
        margin: const EdgeInsets.all(16),
        barBlur: 20,
        title: title ?? 'Success',
        message: message,
        duration: const Duration(seconds: 2),
        borderRadius: 10,
      ),
    );
  }

  static void showInfoSnackbar({
    String? title,
    String? message,
  }) {
    Get.showSnackbar(
      GetSnackBar(
        backgroundColor: Colors.blueGrey.withAlpha(210),
        margin: const EdgeInsets.all(16),
        barBlur: 20,
        title: title ?? 'Info',
        message: message,
        duration: const Duration(seconds: 2),
        borderRadius: 10,
      ),
    );
  }
}
