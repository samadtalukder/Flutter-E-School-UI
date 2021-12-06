
import 'package:flutter/material.dart';
import 'package:flutter_e_school_ui/app/app_color.dart';
import 'package:flutter_e_school_ui/utils/text_util.dart';

class HomeItemGridTile extends StatefulWidget {
  final String image;
  final String titleText;
  final String subTitleText;

  HomeItemGridTile({
    required this.image,
    required this.titleText,
    required this.subTitleText,
  });

  @override
  _HomeItemGridTileState createState() => _HomeItemGridTileState();
}

class _HomeItemGridTileState extends State<HomeItemGridTile> {


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 2.5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    widget.image,
                    height: 80.0,
                    width: 80.0,
                  ),
                  TextUtil(
                    text:  widget.titleText.toUpperCase(),
                    fontSize: 16,
                    color: AppColor.blue_upper,
                    fontWeight: FontWeight.w400,
                  ),
                  TextUtil(
                    text:  widget.subTitleText.toUpperCase(),
                    fontSize: 16,
                    color: AppColor.blue_down,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
