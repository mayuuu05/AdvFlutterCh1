import 'dart:math';

import 'package:advflutter_ch1/Screen/1.7/view/hidePhotoGallery.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class Photogalleryprovider extends ChangeNotifier{

  final LocalAuthentication auth = LocalAuthentication();
  bool fingerprint = false;

  Future<void> localUserAuthentication(BuildContext context) async {
    List<BiometricType> availableBiometrics;
    try {
      availableBiometrics = await auth.getAvailableBiometrics();
    } on PlatformException catch (e) {}
    try {
      final didAuthenticate = await auth.authenticate(
        localizedReason: 'Verify with Fingerprint',
      );
      fingerprint = didAuthenticate;
      notifyListeners();
    } on PlatformException catch (e) {}

    if (fingerprint) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const Hidephotogallery(),
      ));
    }
    else{}
  }

}