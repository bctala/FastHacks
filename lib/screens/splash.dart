import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../screens/screens.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(children: const [
        Text(
          "مرشدي",
          style: TextStyle(
              fontSize: 72, color: Colors.white, fontFamily: 'Monadi'),
        )
      ]),
      backgroundColor: const Color(0XFFBBA590),
      nextScreen: SignUpPage(),
      splashIconSize: 200,
      duration: 2000,
      pageTransitionType: PageTransitionType.fade,
    );
  }
}
