import 'dart:math';

import 'package:flutter/material.dart';
import 'package:design/utilities.dart';

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
