
import 'package:flutter/material.dart';
import 'package:flutter_e_school_ui/app/app_color.dart';
import 'package:flutter_e_school_ui/utils/text_util.dart';

class HomeItemFullGridTile extends StatefulWidget {
  final String image;
  final String titleText;
  final String subTitleText;

  HomeItemFullGridTile({
    required this.image,
    required this.titleText,
    required this.subTitleText,
  });

  @override
  _HomeItemFullGridTileState createState() => _HomeItemFullGridTileState();
}

class _HomeItemFullGridTileState extends State<HomeItemFullGridTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                widget.image,
                height: 100.0,
                width: 100.0,
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextUtil(
                    text: widget.titleText.toUpperCase(),
                    fontSize: 16,
                    color: AppColor.blue_upper,
                    fontWeight: FontWeight.w400,
                  ),
                  TextUtil(
                    text: widget.subTitleText.toUpperCase(),
                    fontSize: 16,
                    color: AppColor.blue_down,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
