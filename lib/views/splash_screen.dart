import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'dart:async';
import '../util/constants.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to home page after delay
    Timer(const Duration(seconds: 3), () {
      Get.off(() => HomeScreen());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DefaultTextStyle(
          style: const TextStyle(
            color: textBlack,
            fontWeight: FontWeight.bold,
            fontFamily: 'DancingScript',
            fontSize: 30.0,
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              WavyAnimatedText(
                'PERSONAL GALLERY',
                speed: Duration(milliseconds: 160),
              ),
            ],
            isRepeatingAnimation: false,
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
