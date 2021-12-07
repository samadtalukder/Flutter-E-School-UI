import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextUtil extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;
  final TextAlign alignment;
  final int maxLine;

   TextUtil({

    required this.text,
    this.color = Colors.black,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 15,
    this.alignment = TextAlign.center,
    this.maxLine = 20,})
      : super();

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: alignment,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.poppins(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    );
  }
}
