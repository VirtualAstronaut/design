import 'package:flutter/material.dart';

class AppTheme {
  static const TextStyle splashScreenTitle =
      TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold);
  static const TextStyle splashScreenBody = TextStyle(
    color: Colors.white60,
    fontSize: 15,
  );
  static const TextStyle buttonTextStyle =
      TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold);
  static const Color pinkColor = Color(0xffF78DF8);
}

extension CustomText on Text {
  getColoredAndSized({required Color color, required double fontSize}) {
    return Text(
      data!,
      style: TextStyle(color: color, fontSize: fontSize),
    );
  }
}
