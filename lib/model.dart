import 'package:flutter/material.dart';

class Transactions {
  final String imagePath;
  final String title;
  final String amount;
  final Color bgcolor;
  final Color amountColor;
  const Transactions(this.imagePath, this.bgcolor, this.title, this.amount,
      {this.amountColor = const Color(0xFFFF8A65)});
}

class ButtonIcons {
  final IconData iconData;
  final String bottomText;

  const ButtonIcons(this.iconData, this.bottomText);
}
