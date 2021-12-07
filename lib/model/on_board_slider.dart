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
    sliderHeading: Constants.slide_title_1,
    sliderSubHeading: Constants.slide_content_1,
    sliderImageUrl: ImageUtil.slide1,
  ),
  OnBoardSlider(
    sliderHeading: Constants.slide_title_2,
    sliderSubHeading: Constants.slide_title_content_2,
    sliderImageUrl: ImageUtil.slide2,
  ),
  OnBoardSlider(
    sliderHeading: Constants.slide_title_3,
    sliderSubHeading: Constants.slide_content_3,
    sliderImageUrl: ImageUtil.slide3,
  ),
];
