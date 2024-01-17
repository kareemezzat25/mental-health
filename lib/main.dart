import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:mentalhealth/views/homeview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          duration: 3000,
          splash: const Text('Mental health',
              style: TextStyle(
                  fontSize: 36,
                  fontFamily: 'Hurricane',
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0B570E))),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.white,
          nextScreen: HomePage(),
        ));
  }
}
