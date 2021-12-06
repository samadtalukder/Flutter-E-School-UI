import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_e_school_ui/app/app_constants.dart';
import 'package:flutter_e_school_ui/app/app_preference.dart';
import 'package:flutter_e_school_ui/route/page_routes.dart';
import 'package:flutter_e_school_ui/widgets/gradient_bg.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {

  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final splashDelay = 5;

  @override
  void initState() {
    super.initState();

    loadWidget();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: const [
          GradientBG(),
        ],
      ),
    );
  }

  loadWidget() async {
    var duration = Duration(seconds: splashDelay);
    return Timer(duration, checkOnBoardScreen);
  }

  Future checkOnBoardScreen() async {
    bool isFirstTimeOpen =
        AppPreference.getBooleanData(Constants.introScreenKey) ?? false;
    //Navigator.pop(context);
    if (isFirstTimeOpen) {
      if (AppPreference.getData(Constants.schoolNameKey) != "") {
        Get.toNamed(Routes.home);
      } else {
        Get.toNamed(Routes.selectSchool);
      }
    } else {
      await AppPreference.setBooleanData(Constants.introScreenKey, true);
      Get.offNamed(Routes.onBoarding);
    }
  }
}


