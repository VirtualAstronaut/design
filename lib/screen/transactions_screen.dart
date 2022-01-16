import 'package:design/components/grid_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:design/utilities.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Column(
          children: <Widget>[
            const AppBarBuider(),
            const SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: AppTheme.getBoxShadow(y: 7, spreadRadius: 10),
                color: Colors.black,
              ),
              height: 300,
              width: width * .85,
              // padding: EdgeInsets.symmetric(vertical: 5, horizontal: 35),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: CustomPaint(
                  painter: GridBackground(),
                  child: CircularPercentIndicator(
                    percent: .65,
                    radius: 225,
                    lineWidth: 25,
                    animation: true,
                    // arcType: ArcType.FULL,
                    // arcBackgroundColor: Colors.deepOrange.shade400,
                    // widgetIndicator:
                    //     Text('ok').getCustomText(color: Colors.white),
                    circularStrokeCap: CircularStrokeCap.round,
                    backgroundColor: const Color(0xFFFF8A65),
                    progressColor: Colors.tealAccent,
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Balance')
                            .getCustomText(color: Colors.white, fontSize: 20),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text('\$879').getCustomText(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('History').getCustomText(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                Row(
                  children: [
                    const Text('This Month').getCustomText(
                      color: Colors.grey,
                    ),
                    const Icon(
                      Icons.arrow_drop_down_sharp,
                      color: Colors.grey,
                      size: 19,
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            )
          ]
              .followedBy(List.generate(
                5,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: AppConstants
                                .transactionsList[index].bgcolor
                                .withOpacity(.4),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(AppConstants
                                  .transactionsList[index].imagePath),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(AppConstants.transactionsList[index].title)
                                  .getCustomText(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                              const Text('10 Jan, 2022').getCustomText(
                                  fontSize: 12, color: Colors.grey),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(AppConstants.transactionsList[index].amount)
                              .getCustomText(
                                  color: AppConstants
                                      .transactionsList[index].amountColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                        ],
                      )
                    ],
                  ),
                ),
              ))
              .toList(),
        ),
      ),
    );
  }
}

class AppBarBuider extends StatelessWidget {
  const AppBarBuider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        const Text('Report')
            .getCustomText(fontSize: 21, fontWeight: FontWeight.bold),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.more_horiz_outlined))
      ],
    );
  }
}
