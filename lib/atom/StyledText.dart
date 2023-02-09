import 'package:flutter/material.dart';

enum TextType { h1, h2, h3, b1, b2, subtext }

class TextStyleConfig {
  static TextStyle getTextStyle(TextType type, Color color) {
    var textStyle = TextStyle();
    switch (type) {
      case TextType.h1:
        textStyle = TextStyle(
            color: color, fontSize: 32.0, fontWeight: FontWeight.w800);
        break;
      case TextType.h2:
        textStyle = TextStyle(
            color: color, fontSize: 28.0, fontWeight: FontWeight.w700);
        break;
      case TextType.h3:
        textStyle = TextStyle(
            color: color, fontSize: 24.0, fontWeight: FontWeight.w600);
        break;
      case TextType.b1:
        textStyle = TextStyle(
            color: color, fontSize: 20.0, fontWeight: FontWeight.w500);
        break;
      case TextType.b2:
        textStyle = TextStyle(
            color: color, fontSize: 20.0, fontWeight: FontWeight.normal);
        break;
      case TextType.subtext:
        textStyle = TextStyle(
            color: color, fontSize: 16.0, fontWeight: FontWeight.normal);
        break;
    }
    return textStyle;
  }
}

class StyledText extends StatelessWidget {
  final String text;
  final Color color;
  final TextType type;

  const StyledText(
      {super.key,
      required this.text,
      this.color = Colors.black87,
      this.type = TextType.b1});

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyleConfig.getTextStyle(type, color);
    return Text(
      text,
      style: textStyle,
    );
  }
}
