import 'package:flutter/material.dart';
import 'package:flutter_e_school_ui/app/app_color.dart';

class OnBoardView extends StatefulWidget {
  final title;
  final content;
  final imageIcon;

  const OnBoardView({
    Key? key,
    this.title,
    this.content,
    this.imageIcon,
  }) : super(key: key);

  @override
  OnBoardViewState createState() {
    return OnBoardViewState();
  }
}

class OnBoardViewState extends State<OnBoardView>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Material(
        elevation: 2.0,
        borderRadius: const BorderRadius.all(
          Radius.circular(5.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              widget.imageIcon,
              height: 250.0,
              width: 250.0,
            ),
            Text(
              widget.title,
              softWrap: true,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: AppColor.blue_upper,
              ),
            ),
            Text(
              widget.content,
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14.0,
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
