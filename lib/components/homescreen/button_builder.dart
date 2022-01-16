import 'package:design/utilities.dart';
import 'package:flutter/material.dart';

class ButtonsBuilderWidget extends StatelessWidget {
  const ButtonsBuilderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
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
                        AppConstants.buttons[index].iconData,
                        color: Colors.grey.shade300,
                        size: 30,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(AppConstants.buttons[index].bottomText)
                  ],
                )),
      ),
    );
  }
}
