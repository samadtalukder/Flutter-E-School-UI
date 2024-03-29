import 'package:flutter/material.dart';
import 'package:flutter_e_school_ui/app/app_color.dart';
import 'package:flutter_e_school_ui/utils/image_util.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColor.blue_down, AppColor.blue_upper],
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  ImageUtil.smsLogo,
                  width: 250.0,
                  height: 350.0,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: -150.0,
          left: -50.0,
          child: Image.asset(
            ImageUtil.bottomShape,
            height: 250.0,
            width: 250.0,
          ),
        ),
        Positioned(
          top: -80.0,
          right: -30.0,
          child: Image.asset(
            ImageUtil.upperShape,
            height: 200.0,
            width: 150.0,
          ),
        ),
        Positioned(
          top: 80.0,
          right: 250.0,
          child: Image.asset(
            ImageUtil.leftTopShape,
            height: 200.0,
            width: 250.0,
          ),
        ),
        Positioned(
          bottom: 120.0,
          left: 250.0,
          child: Image.asset(
            ImageUtil.rightBottomShape,
            height: 200.0,
            width: 250.0,
          ),
        ),
      ],
    );
  }
}