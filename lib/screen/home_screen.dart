import 'dart:math';

import 'package:design/app_theme.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const List<ButtonIcons> buttons = [
    ButtonIcons(Icons.attach_money, "Send"),
    ButtonIcons(Icons.description_outlined, "Bill"),
    ButtonIcons(Icons.phone_android_outlined, "Recharge"),
    ButtonIcons(Icons.more_vert_outlined, "More"),
  ];
  static const List<IconData> icons = [
    Icons.home,
    Icons.attach_money,
    Icons.pie_chart,
    Icons.person
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
        child: Stack(
          children: [
            Column(
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
                const ButtonsBuilderWidget(buttons: buttons),
                const SizedBox(
                  height: 15,
                ),
                const SendAgainLayoutBuilder(),
                const SizedBox(
                  height: 15,
                ),
                TransactionsBuilder(width: width),
              ],
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

class TransactionsBuilder extends StatelessWidget {
  const TransactionsBuilder({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Transactions').getCustomText(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
            const Icon(
              Icons.arrow_forward_ios,
              size: 19,
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.deepOrange.withOpacity(.4),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Adobe Illustrator')
                    .getCustomText(fontSize: 18, fontWeight: FontWeight.w600),
                const Text('10 Jan, 2022')
                    .getCustomText(fontSize: 12, color: Colors.grey),
              ],
            ),
            SizedBox(
              width: width * .25,
            ),
            const Text('-\$23.99').getCustomText(
                color: Colors.deepOrange.shade300,
                fontSize: 15,
                fontWeight: FontWeight.bold)
          ],
        ),
      ],
    );
  }
}

class SendAgainLayoutBuilder extends StatelessWidget {
  const SendAgainLayoutBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Send Again')
            .getCustomText(fontSize: 16, fontWeight: FontWeight.bold),
        const SizedBox(
          height: 15,
        ),
        Wrap(
          spacing: 15,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              child: const Icon(
                Icons.person_add_outlined,
                color: Colors.black54,
              ),
            )
          ]
              .followedBy(List.generate(5, (index) {
                final Color randomColor =
                    Colors.primaries[Random().nextInt(Colors.primaries.length)];
                return DecoratedBox(
                    child: CircleAvatar(
                      radius: 22,
                      backgroundColor: randomColor,
                    ),
                    decoration: BoxDecoration(
                        boxShadow: AppTheme.getBoxShadow(
                            x: 0, y: 3, color: randomColor.withOpacity(.25))));
              }))
              .toList(),
        ),
      ],
    );
  }
}

class ButtonsBuilderWidget extends StatelessWidget {
  const ButtonsBuilderWidget({
    Key? key,
    required this.buttons,
  }) : super(key: key);

  final List<ButtonIcons> buttons;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
          4,
          (index) => Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: Colors.black, shape: BoxShape.circle),
                    child: Icon(
                      buttons[index].iconData,
                      color: Colors.grey.shade300,
                      size: 35,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(buttons[index].bottomText)
                ],
              )),
    );
  }
}

class CardLayoutBuilder extends StatelessWidget {
  const CardLayoutBuilder({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            height: 220,

            // alignment: Alignment.center,
            width: width * .7,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.orange),
          ),
        ),
        Center(
          child: Container(
            height: 220,
            margin: const EdgeInsets.only(top: 20),
            // alignment: Alignment.center,
            width: width * .8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.teal),
          ),
        ),
        Container(
          height: 220,
          margin: const EdgeInsets.only(top: 40),
          width: width * .9,
          // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: AppTheme.getBoxShadow(
                  x: 0, y: 7, color: AppTheme.pinkColor.withOpacity(.4)),
              gradient: const LinearGradient(
                colors: [
                  AppTheme.pinkColor,
                  Colors.black,
                ],
                stops: [
                  .45,
                  .45,
                ],
              )),
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Image(
                    image: const AssetImage('assets/images/apple_logo.png'),
                    height: 30,
                    width: 30,
                  ),
                  const SizedBox(
                    height: 75,
                  ),
                  const Text('\$ 2 104,81')
                      .getCustomText(fontSize: 23, fontWeight: FontWeight.bold),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('Exp. 6/26')
                ],
              ),
            ),
            const VerticalDivider(
              color: Colors.yellow,
              thickness: 5,
              width: 30,
            ),
            const SizedBox(
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text('Putri Intan').getCustomText(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List<Widget>.generate(
                          4,
                          (index) => const Icon(
                                Icons.circle,
                                color: Colors.white,
                                size: 10,
                              )).followedBy([
                        const SizedBox(
                          width: 5,
                        ),
                        const Text('6838').getCustomText(color: Colors.white)
                      ]).toList()),
                ],
              ),
            ),
          ]),
        ),
      ],
    );
  }
}

class HeaderBuilder extends StatelessWidget {
  const HeaderBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '\$ 3 246,83',
            ).getCustomText(fontSize: 30, fontWeight: FontWeight.bold),
            const SizedBox(
              height: 9,
            ),
            const Text(
              'Total Balance',
            ).getCustomText(fontSize: 15, color: Colors.grey),
          ],
        ),
        OutlinedButton(
            onPressed: () {},
            style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(vertical: 9, horizontal: 10)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
                side: MaterialStateProperty.all(
                    const BorderSide(color: Colors.black38, width: 1)),
                foregroundColor: MaterialStateProperty.all(Colors.black)),
            child: Row(
              children: const [
                Text('Add Card'),
                SizedBox(
                  width: 9,
                ),
                Icon(Icons.add)
              ],
            )),
      ],
    );
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hello Intan',
              style: AppTheme.greyTextStyle,
            ),
            const SizedBox(
              height: 9,
            ),
            const Text(
              'Welcome Back🔥',
            ).getCustomText(fontSize: 18, fontWeight: FontWeight.bold),
          ],
        ),
        DecoratedBox(
          decoration: BoxDecoration(
              boxShadow: AppTheme.getBoxShadow(
                  x: 0, y: 5, color: AppTheme.pinkColor.withOpacity(.3))),
          child: const CircleAvatar(
            backgroundColor: AppTheme.pinkColor,
          ),
        )
      ],
    );
  }
}

class ButtonIcons {
  final IconData iconData;
  final String bottomText;

  const ButtonIcons(this.iconData, this.bottomText);
}
