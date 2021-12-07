import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SlideDotsWidget extends StatelessWidget {
  bool isActive;

  SlideDotsWidget(this.isActive, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 3.3),
      height: 6.0,
      width: isActive ? 55.0 : 55.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.blueAccent : Colors.grey,
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}
