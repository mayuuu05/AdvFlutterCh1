import 'package:advflutter_ch1/Screen/1.4/view/change_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screen/1.4/provider/changeThemeProvider.dart';

void main() {
  runApp(const AdvFlutter_ch1());
}

class AdvFlutter_ch1 extends StatelessWidget {
  const AdvFlutter_ch1({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => UserProfile(),
      builder: (context, child) =>  MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          colorScheme: const ColorScheme.light(
            primary: Colors.purple,
            onPrimary: Colors.blue,
            secondary: Colors.green,
            onSecondary: Colors.redAccent,

          ),
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          colorScheme: const ColorScheme.dark(
            primary: Colors.amber,
            onPrimary: Colors.pink,
            secondary: Colors.blue,
            onSecondary: Colors.green,
          ),
        ),
        themeMode: Provider.of<UserProfile>(context).isDark
            ? ThemeMode.dark
            : ThemeMode.light,
        debugShowCheckedModeBanner: false,
        home: ChangeTheme(),
      ),
    );
  }
}
