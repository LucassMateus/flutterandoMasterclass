import 'package:flutter/material.dart';

class ButtonLoginPage extends StatelessWidget {
  final String text;
  final dynamic buttonColor;
  final dynamic textColor;
  final dynamic image;
  final dynamic fontFamily;
  final dynamic fontSize;

  const ButtonLoginPage(
      {super.key,
      required this.text,
      required this.textColor,
      required this.buttonColor,
      required this.image,
      required this.fontFamily,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          image,
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: textColor,
                fontFamily: fontFamily,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
