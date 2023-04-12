import 'package:flutter/material.dart';

class TextLoginPage extends StatelessWidget {
  final String text;
  final dynamic textColor;
  final double fontSize;
  final dynamic fontFamily;

  const TextLoginPage(
      {super.key,
      required this.text,
      required this.textColor,
      required this.fontSize,
      required this.fontFamily});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize, fontWeight: FontWeight.bold, color: textColor, fontFamily: fontFamily),
    );
  }
}
