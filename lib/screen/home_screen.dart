import 'package:design/utilities.dart';
import 'package:design/components/homescreen/app_bar_builder.dart';
import 'package:design/components/homescreen/button_builder.dart';
import 'package:design/components/homescreen/card_layout_builder.dart';
import 'package:design/components/homescreen/header_builder.dart';
import 'package:design/components/homescreen/send_again_builder.dart';
import 'package:design/components/homescreen/transactions_builder.dart';
import 'package:design/screen/transactions_screen.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const List<IconData> icons = [
    Icons.home,
    Icons.attach_money,
    Icons.pie_chart,
    Icons.person
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
        height: height,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppBarWidget(),
                  const SizedBox(
                    height: 25,
                  ),
                  const HeaderBuilder(),
                  const SizedBox(
                    height: 20,
                  ),
                  CardLayoutBuilder(width: width),
                  const SizedBox(
                    height: 15,
                  ),
                  const ButtonsBuilderWidget(),
                  const SizedBox(
                    height: 15,
                  ),
                  const SendAgainLayoutBuilder(),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (_) => const TransactionScreen()));
                      },
                      child: TransactionsBuilder(width: width)),
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  height: 75,
                  width: width * .9,
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(
                        4,
                        (index) => Icon(
                              icons[index],
                              color: index != 0
                                  ? Colors.grey.shade300
                                  : AppTheme.pinkColor,
                            )),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
