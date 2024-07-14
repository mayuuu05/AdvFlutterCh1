import 'package:advflutter_ch1/Screen/1.2/page2.dart';
import 'package:advflutter_ch1/Screen/1.2/stepper_example.dart';
import 'package:advflutter_ch1/Screen/1.4/view/change_theme.dart';
import 'package:advflutter_ch1/Screen/1.5/provider/quote_data_provider.dart';
import 'package:advflutter_ch1/Screen/1.5/view/quote_page.dart';
import 'package:advflutter_ch1/Screen/1.6(2)/provider/contectProvider.dart';
import 'package:advflutter_ch1/Screen/1.6/provider/onBoardingProvider.dart';
import 'package:advflutter_ch1/Screen/1.6/view/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screen/1.4/provider/changeThemeProvider.dart';
import 'Screen/1.6(2)/view/contect.dart';

void main()
{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(AdvFlutter_ch1());
}

class AdvFlutter_ch1 extends StatelessWidget {
  const AdvFlutter_ch1({super.key});

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (context) => Contectprovider(),
      builder: (context, child) =>  MaterialApp(
        // theme: ThemeData(
        //   brightness: Brightness.light,
        //   colorScheme: const ColorScheme.light(
        //     primary: Colors.purple,
        //     onPrimary: Colors.blue,
        //     secondary: Colors.green,
        //     onSecondary: Colors.redAccent,
        //
        //   ),
        // ),
        // darkTheme: ThemeData(
        //   brightness: Brightness.dark,
        //   colorScheme: const ColorScheme.dark(
        //     primary: Colors.amber,
        //     onPrimary: Colors.pink,
        //     secondary: Colors.blue,
        //     onSecondary: Colors.green,
        //   ),
        // ),
        // themeMode: Provider.of<UserProfile>(context).isDark
        //     ? ThemeMode.dark
        //     : ThemeMode.light,
        debugShowCheckedModeBanner: false,
        home: ContectPage(),
      ),
    );
  }
}
