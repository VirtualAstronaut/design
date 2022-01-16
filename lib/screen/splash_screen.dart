import 'package:design/components/grid_background.dart';
import 'package:design/screen/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:design/utilities.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            // clipBehavior: Clip.none,
            children: [
              CustomPaint(
                size: Size(MediaQuery.of(context).size.width,
                    MediaQuery.of(context).size.height),
                painter: GridBackground(),
              ),
              Positioned(
                  top: 100,
                  left: width * .005,
                  child: Image(
                      width: width * .95,
                      image:
                          const AssetImage('assets/images/initialphoto.png'))),
              Positioned(
                  left: width * 0.05,
                  bottom: height * 0.15,
                  child: const TextAndButton()),
              const Positioned(
                  bottom: -35,
                  right: -8,
                  child: Image(
                      height: 150,
                      width: 150,
                      image: AssetImage('assets/images/wave_bg.png')))
            ],
          )),
    );
  }
}

class TextAndButton extends StatelessWidget {
  const TextAndButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Easy way\nmanage your class\nin one place',
        ).getCustomText(
            color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
        const SizedBox(
          height: 15,
        ),
        const Text(
          'Don\'t need any more open couple apps\nfor your daily transaction',
        ).getCustomText(
          color: Colors.white60,
          fontSize: 15,
        ),
        const SizedBox(
          height: 15,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                CupertinoPageRoute(builder: (_) => const HomeScreen()));
          },
          child: Container(
            decoration: BoxDecoration(
                color: AppTheme.pinkColor,
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 9),
                      color: AppTheme.pinkColor.withOpacity(.4),
                      blurRadius: 15,
                      spreadRadius: 2)
                ],
                borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
            child: Row(
              children: [
                const Text(
                  'Explore now',
                ).getCustomText(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
                const SizedBox(
                  width: 15,
                ),
                const Icon(Icons.arrow_right_alt_outlined)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
