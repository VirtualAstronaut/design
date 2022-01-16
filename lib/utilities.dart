import 'package:design/model.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static const Color pinkColor = Color(0xffF78DF8);
  static List<BoxShadow> getBoxShadow(
      {double x = 0,
      double y = 0,
      Color color = Colors.black12,
      double blurRadius = 15,
      double spreadRadius = 2}) {
    return [
      BoxShadow(
          offset: Offset(x, y),
          color: color,
          blurRadius: blurRadius,
          spreadRadius: spreadRadius)
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

class AppConstants {
  static const List<Transactions> transactionsList = [
    Transactions('assets/images/illustrator.png', Color(0xff9B4C04),
        "Adobe Illustrator", "-\$23.99"),
    Transactions('assets/images/mastercard.png', Color(0xffF49C1C),
        "Transfer From Claude", "-\$950.99",
        amountColor: Colors.teal),
    Transactions('assets/images/netflix.png', Color(0xffF44434),
        "Netflix Ultra HD", "-\$16.99"),
    Transactions('assets/images/spotify.png', Color(0xff04DC64),
        "Spotify premium", "-\$11.99"),
    Transactions('assets/images/playstation.png', Color(0xff1A6AAF),
        "FIFA 2022 Ultimate", "-\$50.99")
  ];

  static const List<ButtonIcons> buttons = [
    ButtonIcons(Icons.attach_money, "Send"),
    ButtonIcons(Icons.description_outlined, "Bill"),
    ButtonIcons(Icons.phone_android_outlined, "Recharge"),
    ButtonIcons(Icons.more_vert_outlined, "More"),
  ];
}
