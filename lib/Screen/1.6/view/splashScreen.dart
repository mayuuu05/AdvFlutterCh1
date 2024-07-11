import 'dart:async';
import 'package:advflutter_ch1/Screen/1.6/provider/onBoardingProvider.dart';
import 'package:advflutter_ch1/Screen/1.6/view/homePage.dart';
import 'package:advflutter_ch1/Screen/1.6/view/introscreens.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';


class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    OnboardingProvider onBoardingProvider = Provider.of<OnboardingProvider>(context, listen: false);

    Timer(const Duration(seconds: 4), () async {
      await onBoardingProvider.getHomeStatus();
      if (onBoardingProvider.isTrue) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
      } else {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Introscreen1()));
      }
    });


    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Lottie.asset('assets/images/logo.json'),
      ),
    );
  }
}
