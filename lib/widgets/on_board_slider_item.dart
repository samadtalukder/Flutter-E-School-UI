import 'package:flutter/material.dart';
import 'package:flutter_e_school_ui/model/on_board_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardSliderItem extends StatelessWidget {
  final int index;

  const OnBoardSliderItem(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: ScreenUtil().setHeight(400),
          width: ScreenUtil().setWidth(400),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(onBoardSlideList[index].sliderImageUrl),
            ),
          ),
        ),
        const SizedBox(
          height: 60.0,
        ),
        Text(
          onBoardSlideList[index].sliderHeading,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20.5,
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(
              onBoardSlideList[index].sliderSubHeading,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                letterSpacing: 1.5,
                fontSize: 12.5,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}
