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

  static const TextStyle greyTextStyle = TextStyle(
    color: Colors.grey,
    fontSize: 15,
  );
  static List<BoxShadow> getBoxShadow(
      {double x = 0,
      double y = 0,
      Color color = Colors.black54,
      double blurRadius = 15}) {
    return [
      BoxShadow(
          offset: Offset(x, y),
          color: color,
          blurRadius: blurRadius,
          spreadRadius: 2)
    ];
  }
}

extension CustomText on Text {
  Text getCustomText(
      {Color color = Colors.black,
      double fontSize = 15,
      FontWeight fontWeight = FontWeight.normal}) {
    return Text(data!,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ));
  }
}
