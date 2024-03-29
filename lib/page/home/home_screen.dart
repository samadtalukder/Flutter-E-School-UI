import 'package:flutter/material.dart';
import 'package:flutter_e_school_ui/app/app_color.dart';
import 'package:flutter_e_school_ui/app/app_constants.dart';
import 'package:flutter_e_school_ui/page/academic_management/academic_management_screen.dart';

import 'package:flutter_e_school_ui/utils/image_util.dart';
import 'package:flutter_e_school_ui/utils/text_util.dart';
import 'package:flutter_e_school_ui/widgets/home_item_full_grid_tile.dart';
import 'package:flutter_e_school_ui/widgets/home_item_grid_tile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
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
                top: ScreenUtil().setHeight(-80),
                right: ScreenUtil().setWidth(-20),
                child: Image.asset(
                  ImageUtil.upperShape,
                  height: ScreenUtil().setHeight(220),
                  width: ScreenUtil().setWidth(160),
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
              Positioned(
                top: ScreenUtil().setHeight(160),
                right: ScreenUtil().setWidth(1),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        ImageUtil.flowerTob,
                        height: ScreenUtil().setHeight(150),
                        width: ScreenUtil().setWidth(100),
                      ),
                    ],
                  ),
                  transform: Matrix4.translationValues(
                    ScreenUtil().setWidth(-5),
                    ScreenUtil().setHeight(-50),
                    0,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: ScreenUtil().setHeight(50),
                  left: ScreenUtil().setWidth(30),
                ),
                margin: EdgeInsets.only(
                  right: ScreenUtil().setWidth(90),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextUtil(
                          text: Constants.welcome,
                          fontSize: 18,
                          color: AppColor.colorTextYellow,
                          fontWeight: FontWeight.normal,
                        ),
                        TextUtil(
                          text: Constants.schoolName,
                          fontSize: 20,
                          maxLine: 1,
                          alignment: TextAlign.start,
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
                  top: ScreenUtil().setHeight(350),
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: AppColor.colorWhite,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(ScreenUtil().setHeight(30)),
                      topRight: Radius.circular(ScreenUtil().setHeight(30)),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: ScreenUtil().setHeight(230),
                  left: ScreenUtil().setWidth(20),
                  right: ScreenUtil().setWidth(20),
                ),
                child: StaggeredGridView.countBuilder(
                  //physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  primary: false,
                  crossAxisCount: 4,
                  itemCount: _listTile.length,
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      child: _listTile[index],
                      onTap: () {
                        switch (index) {
                          case 0:
                            {
                              Get.to(
                                 AcademicManagementScreen(),
                                arguments: Constants.academicManagement,
                              );
                            }
                            break;
                          case 1:
                            {}
                            break;
                          case 2:
                            {}
                            break;
                          case 3:
                            {}
                            break;
                          case 4:
                            {}
                            break;
                          case 5:
                            {}
                            break;
                          case 6:
                            {}
                            break;
                          case 7:
                            {}
                            break;
                          case 8:
                            {}
                            break;
                        }
                      },
                    );
                  },
                  staggeredTileBuilder: (int index) {
                    if (index == 0) {
                      return const StaggeredTile.count(4, 2);
                    } else if (index == 5) {
                      return const StaggeredTile.count(4, 2);
                    } else if (index == 6) {
                      return const StaggeredTile.count(2, 3);
                    } else if (index == 7) {
                      return const StaggeredTile.count(2, 2);
                    } else if (index == 8) {
                      return const StaggeredTile.count(2, 3);
                    } else {
                      return StaggeredTile.count(2, index.isEven ? 2 : 3);
                    }
                  },
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

//List of Cards with color and icon
List<Widget> _listTile = <Widget>[
  HomeItemFullGridTile(
    image: ImageUtil.academicManagement,
    titleText: Constants.academic,
    subTitleText: Constants.management,
  ),
  HomeItemGridTile(
    image: ImageUtil.admissionManagement,
    titleText: Constants.admission,
    subTitleText: Constants.management,
  ),
  HomeItemGridTile(
    image: ImageUtil.humanResources,
    titleText: Constants.human,
    subTitleText: Constants.resources,
  ),
  HomeItemGridTile(
    image: ImageUtil.studentManagement,
    titleText: Constants.student,
    subTitleText: Constants.management,
  ),
  HomeItemGridTile(
    image: ImageUtil.accountManagement,
    titleText: Constants.accounts,
    subTitleText: Constants.management,
  ),
  HomeItemFullGridTile(
    image: ImageUtil.routineExam,
    titleText: Constants.routineExam,
    subTitleText: Constants.management,
  ),
  HomeItemGridTile(
    image: ImageUtil.resultManagement,
    titleText: Constants.result,
    subTitleText: Constants.management,
  ),
  HomeItemGridTile(
    image: ImageUtil.attendanceManagement,
    titleText: Constants.attendance,
    subTitleText: Constants.management,
  ),
  HomeItemGridTile(
    image: ImageUtil.leaveManagement,
    titleText: Constants.leave,
    subTitleText: Constants.management,
  ),
];
