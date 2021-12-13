import 'package:flutter/material.dart';
import 'package:flutter_e_school_ui/app/app_color.dart';
import 'package:flutter_e_school_ui/app/app_constants.dart';
import 'package:flutter_e_school_ui/model/on_board_slider.dart';
import 'package:flutter_e_school_ui/page/home/home_screen.dart';
import 'package:flutter_e_school_ui/utils/image_util.dart';
import 'package:flutter_e_school_ui/utils/text_util.dart';
import 'package:flutter_e_school_ui/widgets/on_board_slider_item.dart';
import 'package:flutter_e_school_ui/widgets/slider_dots_widget.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _IntroPage createState() => _IntroPage();
}

class _IntroPage extends State<OnBoardingScreen> {
  int _currentPage = 0;
  final int _totalPage = onBoardSlideList.length;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            alignment: AlignmentDirectional.topCenter,
            margin: const EdgeInsets.only(top: 100.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < _totalPage; i++)
                  if (i == _currentPage)
                    SlideDotsWidget(true)
                  else
                    SlideDotsWidget(false)
              ],
            ),
          ),
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: _pageController,
            onPageChanged: _onPageChanged,
            itemCount: onBoardSlideList.length,
            itemBuilder: (ctx, i) => OnBoardSliderItem(i),
          ),
          Stack(
            alignment: AlignmentDirectional.topStart,
            children: [
              _currentPage != _totalPage - 1
                  ? Align(
                      alignment: Alignment.bottomCenter,
                      child: InkWell(
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
                      ),
                    )
                  : const Text(''),
              _currentPage != _totalPage - 1
                  ? Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: () {
                          _pageController.jumpToPage(3);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15.0, top: 70.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
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
                  : InkWell(
                      onTap: () {
                        Get.off(const HomeScreen());
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
                          Constants.enter,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
            ],
          ),
          Positioned(
            top: -50.0,
            right: -30.0,
            child: Image.asset(
              ImageUtil.slideTopShape,
              height: 200.0,
              width: 150.0,
            ),
          ),
          Positioned(
            top: 80.0,
            right: 300.0,
            child: Image.asset(
              ImageUtil.slideLeftShape,
              height: 200.0,
              width: 250.0,
            ),
          ),
          Positioned(
            bottom: 120.0,
            left: 300.0,
            child: Image.asset(
              ImageUtil.slideRightShape,
              height: 200.0,
              width: 250.0,
            ),
          ),
        ],
      ),
    );
  }
}
