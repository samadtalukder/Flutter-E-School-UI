import 'package:flutter/material.dart';
import 'package:flutter_e_school_ui/app/app_color.dart';
import 'package:flutter_e_school_ui/app/app_constants.dart';
import 'package:flutter_e_school_ui/utils/image_util.dart';
import 'package:flutter_e_school_ui/utils/text_util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AcademicManagementScreen extends StatefulWidget {
  //const AcademicManagementScreen({Key? key}) : super(key: key);

  @override
  _AcademicManagementScreenState createState() =>
      _AcademicManagementScreenState();
}

class _AcademicManagementScreenState extends State<AcademicManagementScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            height: ScreenUtil().screenHeight,
            width: ScreenUtil().screenWidth,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColor.blue_upper, AppColor.blue_down],
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Positioned(
            top: ScreenUtil().setHeight(80),
            right: ScreenUtil().setWidth(-20),
            child: Image.asset(
              ImageUtil.upperShape,
              height: ScreenUtil().setHeight(220),
              width: ScreenUtil().setWidth(160),
            ),
          ),
          Positioned(
            top: ScreenUtil().setHeight(150),
            right: ScreenUtil().setWidth(300),
            child: Image.asset(
              ImageUtil.icFx,
              height: ScreenUtil().setHeight(60),
              width: ScreenUtil().setWidth(60),
            ),
          ),
          Positioned(
            top: ScreenUtil().setHeight(230),
            right: ScreenUtil().setWidth(180),
            child: Image.asset(
              ImageUtil.icGroupPanel,
              height: ScreenUtil().setHeight(60),
              width: ScreenUtil().setWidth(60),
            ),
          ),
          Positioned(
            top: ScreenUtil().setHeight(240),
            right: ScreenUtil().setWidth(50),
            child: Image.asset(
              ImageUtil.icGroupEquation,
              height: ScreenUtil().setHeight(105),
              width: ScreenUtil().setWidth(105),
            ),
          ),
          Positioned(
            top: ScreenUtil().setHeight(60),
            left: ScreenUtil().setWidth(-90),
            child: Image.asset(
              ImageUtil.leftTopShape,
              height: ScreenUtil().setHeight(220),
              width: ScreenUtil().setWidth(160),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: ScreenUtil().setHeight(150),
              left: ScreenUtil().setWidth(25),
            ),
            child: Stack(
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_back_ios,
                      color: AppColor.colorWhite,
                      size: 18.0,
                    ),
                    TextUtil(
                      text: Constants.back,
                      fontSize: 16,
                      color: AppColor.colorWhite,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
                InkWell(
                  onTap: () => Get.back(),
                ),
              ],
            ),
          ),
          Padding(
                  padding: EdgeInsets.only(
                    top: ScreenUtil().setHeight(260),
                    left: ScreenUtil().setWidth(30),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextUtil(
                            text: Constants.schoolName,
                            fontSize: 14,
                            color: AppColor.colorTextYellow,
                            fontWeight: FontWeight.normal,
                          ),
                          TextUtil(
                            text: Constants.academicManagement,
                            fontSize: 18,
                            color: AppColor.colorWhite,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
          Padding(
            padding: EdgeInsets.only(
              top: ScreenUtil().setHeight(420),
            ),
            child: Container(
              height: ScreenUtil().screenHeight,
              width: ScreenUtil().screenWidth,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: AppColor.colorWhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    ScreenUtil().setWidth(30),
                  ),
                  topRight: Radius.circular(
                    ScreenUtil().setWidth(30),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: ScreenUtil().setHeight(240),
              left: ScreenUtil().setWidth(25),
              right: ScreenUtil().setWidth(25),
            ),
          ),
        ],
      ),
    );
  }
}
