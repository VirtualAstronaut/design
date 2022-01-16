import 'package:flutter/material.dart';
import 'package:design/utilities.dart';

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
            ).getCustomText(
              color: Colors.grey,
              fontSize: 15,
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
