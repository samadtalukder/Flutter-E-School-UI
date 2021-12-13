import 'package:flutter/material.dart';
import 'package:flutter_e_school_ui/app/app_color.dart';
import 'package:get/get.dart';

class SnackBarUtil {
  static void showSnackBar(
      String title, String message,Color bgColor) {

    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: bgColor,
      borderRadius: 12,
      margin: const EdgeInsets.only(
        bottom: 20,
        left: 12,
        right: 12,
      ),
      colorText: AppColor.colorWhite,
    );
  }
}
