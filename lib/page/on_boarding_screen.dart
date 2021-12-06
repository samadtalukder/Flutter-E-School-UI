import 'package:flutter/material.dart';
import 'package:flutter_e_school_ui/app/app_color.dart';
import 'package:flutter_e_school_ui/app/app_constants.dart';
import 'package:flutter_e_school_ui/utils/image_util.dart';
import 'package:flutter_e_school_ui/utils/text_util.dart';
import 'package:flutter_e_school_ui/widgets/on_board_view.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _IntroPage createState() => _IntroPage();
}

class _IntroPage extends State<OnBoardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;
  int totalPageLength = 3;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < totalPageLength; i++) {
      list.add(i == currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return Container(
      margin: const EdgeInsets.only(top: 100.0),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        height: 6.0,
        width: isActive ? 55.0 : 55.0,
        decoration: BoxDecoration(
          color: isActive ? AppColor.active : AppColor.inactive,
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: AppColor.white,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
                SizedBox(
                  height: 500,
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        currentPage = page;
                      });
                    },
                    children: const <Widget>[
                      OnBoardView(
                        title: Constants.slide_title_1,
                        content: Constants.slide_content_1,
                        imageIcon: ImageUtil.slide1,
                      ),
                      OnBoardView(
                        title: Constants.slide_title_2,
                        content: Constants.slide_title_content,
                        imageIcon: ImageUtil.slide2,
                      ),
                      OnBoardView(
                        title: Constants.slide_title_3,
                        content: Constants.slide_content_3,
                        imageIcon: ImageUtil.slide3,
                      ),
                    ],
                  ),
                ),
                currentPage != totalPageLength - 1
                    ? InkWell(
                        onTap: () {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.ease,
                          );
                        },
                        child: Container(
                          width: 300,
                          height: 50,
                          alignment: Alignment.center,
                          transform: Matrix4.translationValues(0.0, -20.0, 0.0),
                          margin: const EdgeInsets.only(
                            left: 20.0,
                            right: 20.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            gradient: const LinearGradient(
                              colors: [AppColor.blue_upper, AppColor.blue_down],
                            ),
                          ),
                          child: const Text(
                            Constants.next,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      )
                    : const Text(""),
                currentPage == totalPageLength - 1
                    ? InkWell(
                        onTap: () {
                          //Get.offNamed(SelectSchoolPage());
                        },
                        child: Container(
                          width: 300,
                          height: 50,
                          alignment: Alignment.center,
                          transform: Matrix4.translationValues(0.0, -10.0, 0.0),
                          margin: const EdgeInsets.only(
                            left: 20.0,
                            right: 20.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            gradient: const LinearGradient(
                              colors: [AppColor.blue_upper, AppColor.blue_down],
                            ),
                          ),
                          child: const Text(
                            Constants.enter,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      )
                    : const Text(""),
                currentPage != totalPageLength - 1
                    ? Expanded(
                        child: Align(
                          alignment: FractionalOffset.bottomRight,
                          child: FlatButton(
                            onPressed: () {
                              /*Get.offNamed(
                                SelectSchoolPage(),
                              );*/
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                TextUtil(
                                  text: Constants.skip,
                                  fontSize: 12,
                                  color: AppColor.shape,
                                  fontWeight: FontWeight.normal,
                                ),
                                const Icon(
                                  Icons.chevron_right,
                                  color: AppColor.shape,
                                  size: 24.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    : const Text(''),
              ],
            ),
          ),
          Positioned(
            bottom: -120.0,
            left: -50.0,
            child: Image.asset(
              ImageUtil.slide_bottom_shape,
              height: 200.0,
              width: 250.0,
            ),
          ),
          Positioned(
            top: -80.0,
            right: -30.0,
            child: Image.asset(
              ImageUtil.slide_top_shape,
              height: 200.0,
              width: 150.0,
            ),
          ),
          Positioned(
            top: 80.0,
            right: 250.0,
            child: Image.asset(
              ImageUtil.slide_left_shape,
              height: 200.0,
              width: 250.0,
            ),
          ),
          Positioned(
            bottom: 120.0,
            left: 250.0,
            child: Image.asset(
              ImageUtil.slide_right_shape,
              height: 200.0,
              width: 250.0,
            ),
          ),
        ],
      ),
    );
  }
}
