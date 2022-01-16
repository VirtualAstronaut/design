import 'package:flutter/material.dart';
import 'package:design/utilities.dart';

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
              radius: 20,
              backgroundColor: Color(0xff9B4C04).withOpacity(.4),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset('assets/images/illustrator.png'),
              ),
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
