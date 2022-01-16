import 'package:flutter/material.dart';
import 'package:design/utilities.dart';

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
