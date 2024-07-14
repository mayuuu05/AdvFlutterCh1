import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contectprovider extends ChangeNotifier{

  void launchGithub()
  {
    Uri url = Uri.parse('https://github.com/');
    launchUrl(url,mode: LaunchMode.inAppWebView);
  }
  void launchAmazon()
  {
    Uri url = Uri.parse('https://www.amazon.in/?&tag=googhydrabk1-21&ref=pd_sl_7hz2t19t5c_e&adgrpid=155259815513&hvpone=&hvptwo=&hvadid=674842289437&hvpos=&hvnetw=g&hvrand=3466434751061872838&hvqmt=e&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=1007761&hvtargid=kwd-10573980&hydadcr=14453_2316415&gad_source=1');
    launchUrl(url,mode: LaunchMode.inAppWebView);
  }
  void launchDribble()
  {
    Uri url = Uri.parse('https://dribbble.com/');
    launchUrl(url,mode: LaunchMode.inAppWebView);
  }
  void launchPhone()
  {
    Uri url = Uri.parse('tel: +91 9510620158');
    launchUrl(url);
  }
  void launchSms()
  {
    Uri url = Uri.parse('sms: +91 9510620158');
    launchUrl(url);
  }
  void launchMail()
  {
    Uri url = Uri.parse('mailto: mayup95106@gmail.com');
    launchUrl(url);
  }



}