import 'package:flutter_e_school_ui/app/app_constants.dart';
import 'package:flutter_e_school_ui/utils/image_util.dart';

class OnBoardSlider {
  final String sliderImageUrl;
  final String sliderHeading;
  final String sliderSubHeading;

  OnBoardSlider({
    required this.sliderImageUrl,
    required this.sliderHeading,
    required this.sliderSubHeading,
  });
}

final onBoardSlideList = [
  OnBoardSlider(
    sliderHeading: Constants.slideTitle_1,
    sliderSubHeading: Constants.slideContent_1,
    sliderImageUrl: ImageUtil.slide1,
  ),
  OnBoardSlider(
    sliderHeading: Constants.slideTitle_2,
    sliderSubHeading: Constants.slideContent_2,
    sliderImageUrl: ImageUtil.slide2,
  ),
  OnBoardSlider(
    sliderHeading: Constants.slideTitle_3,
    sliderSubHeading: Constants.slideContent_3,
    sliderImageUrl: ImageUtil.slide3,
  ),
];
