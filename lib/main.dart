import 'package:flutter/material.dart';

void main() {
  runApp(const ThemeChange());
}
class ThemeChange extends StatefulWidget {
  const ThemeChange({super.key});

  @override
  State<ThemeChange> createState() => _ThemeChangeState();
}

class _ThemeChangeState extends State<ThemeChange> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: isDark?ThemeMode.dark:ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text('Yo Man!',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Text("It's a simpal example of \n           Dark Theme",style: TextStyle(fontSize: 27),),
                SizedBox(height: 80,),                GestureDetector(
                  onTap: () {
                    setState(() {
                      isDark=false;
                    });
                  },
                  child: Container(
                    height: 60,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.yellow,borderRadius: BorderRadius.circular(10)
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Light Icon',style: TextStyle(
                      fontSize: 23,fontWeight: FontWeight.w500,color: Colors.black
                    ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isDark=true;
                    });
                  },
                  child: Container(
                    height: 60,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.red,borderRadius: BorderRadius.circular(10)
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Dark Icon',style: TextStyle(
                        fontSize: 23,fontWeight: FontWeight.w500,color: Colors.black
                    ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}



bool isDark = false;