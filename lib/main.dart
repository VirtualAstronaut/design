import 'package:design/screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DesignApp());
}

class DesignApp extends StatelessWidget {
  const DesignApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
