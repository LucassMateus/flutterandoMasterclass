import 'package:flutter/material.dart';

class Text_login_page extends StatelessWidget {
  final String text;
  final dynamic textColor;
  final double fontSize;
  final dynamic fontFamily;

  const Text_login_page(
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
