import 'dart:async';

import 'package:flutter/material.dart';

import 'introCamera.dart';

class Splashscreenphotogallery extends StatelessWidget {
  const Splashscreenphotogallery({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 4), ()  {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Introcamera()));
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/images/cameLogo.jpg'),
      ),
    );
  }
}
