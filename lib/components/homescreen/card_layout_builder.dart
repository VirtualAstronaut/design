import 'package:flutter/material.dart';
import 'package:design/utilities.dart';

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
