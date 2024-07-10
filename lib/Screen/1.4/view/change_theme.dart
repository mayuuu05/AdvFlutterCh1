import 'package:advflutter_ch1/Screen/1.4/provider/changeThemeProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeTheme extends StatelessWidget {
  const ChangeTheme({super.key});

  @override
  Widget build(BuildContext context) {

    UserProfile userProfileProviderTrue =
    Provider.of<UserProfile>(context, listen: true);
    UserProfile userProfileProviderFalse =
    Provider.of<UserProfile>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 10
            ),
            child: Icon(CupertinoIcons.add_circled),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 150,
              width: 150,
              alignment: Alignment.center,
              decoration:  BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/profile.jpeg'),
                    fit: BoxFit.fill),
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black),

              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Testing User',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 70,
            ),
            ListTile(
              leading: Icon(
                (userProfileProviderTrue.isDark)
                    ? Icons.dark_mode
                    : Icons.sunny,size: 30,
                color: Theme.of(context).colorScheme.primary,
              ),
              title: const Text('Dark Mode',style: TextStyle(
                fontSize: 20
              ),),
              trailing: Switch(
                  inactiveThumbColor: Theme.of(context).colorScheme.primary,
                  activeColor: Theme.of(context).colorScheme.primary,
                  value: userProfileProviderTrue.isDark,
                  onChanged: (value) {
                    userProfileProviderFalse.changeTheme();
                  }),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(
                Icons.grid_on,size: 30,
                color: Theme.of(context).colorScheme.secondary,
              ),
              title: const Text('Story',style: TextStyle(
                  fontSize: 20
              ),),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(Icons.settings,size: 30,
                  color: Theme.of(context).colorScheme.onPrimary),
              title: const Text('Setting and Privacy',style: TextStyle(
                  fontSize: 20
              ),),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(Icons.message_outlined,size: 30,
                  color: Theme.of(context).colorScheme.onSecondary),
              title: const Text('Help Center',style: TextStyle(
                  fontSize: 20
              ),),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(Icons.notifications,size: 30,
                  color: Theme.of(context).colorScheme.primary),
              title: const Text('Notification',style: TextStyle(
                  fontSize: 20
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
