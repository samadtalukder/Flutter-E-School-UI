import 'dart:async';

import 'package:flutter/material.dart';
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

    loadSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: const [
          SplashBody(),
        ],
      ),
    );
  }

  loadSplashScreen() async {
    var duration = Duration(seconds: splashDelay);
    return Timer(duration, checkOnScreen);
  }

  Future checkOnScreen() async {
    Get.offNamed(Routes.onBoarding);
  }
}
