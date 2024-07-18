import 'dart:math';

import 'package:advflutter_ch1/Screen/1.7/view/hidePhotoGallery.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class Photogalleryprovider extends ChangeNotifier{

  final LocalAuthentication auth = LocalAuthentication();
  bool _didAuthenticate = false;

  Future<void> localUserAuthentication(BuildContext context) async {
    List<BiometricType> availableBiometrics;
    try {
      availableBiometrics = await auth.getAvailableBiometrics();
    } on PlatformException catch (e) {

      return;
    }

    if (availableBiometrics.isEmpty) {

      return;
    }

    try {
      final didAuthenticate = await auth.authenticate(
        localizedReason: 'Please authenticate to access hide folder',
      );
      _didAuthenticate = didAuthenticate;
      notifyListeners();
    } on PlatformException catch (e) {

    }

    if (_didAuthenticate) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const Hidephotogallery(),
      ));
    } else {
    }
  }

  int randomNumber() {
    Random random = Random();
    int a = random.nextInt(1100);
    return a;
  }
}