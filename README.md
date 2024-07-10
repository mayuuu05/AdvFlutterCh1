# advflutter_ch1

<div> 
  <img src = "https://github.com/mayuuu05/AdvFlutterCh1/assets/149376263/2985b6e5-1875-431e-bd6f-794ef22f47f0"  height=35% width=22%  />
   <img src = "https://github.com/mayuuu05/AdvFlutterCh1/assets/149376263/357395a3-39c5-4688-8052-9c93af280db9"  height=35% width=22%  />
</div>



# Theme change

In Flutter, themes are used to control the appearance of your app.Flutter provides two built-in themes: LightTheme and DarkTheme. You can further customize these themes or create your own custom themes.


This Flutter project demonstrates how to implement theme switching between light and dark themes.

### Example



```javascript
import 'package:flutter/material.dart';


//isDark is a boolean variable that determines whether the dark theme is active.
bool isDark = false;

//use ternary operator in the theme property of the MaterialApp widget is set based on the value of isDark.
 themeMode: isDark?ThemeMode.dark:ThemeMode.light,


 //For Dark theme
  onTap: () {
    setState(() {
        isDark=true;
    });
},

//For Light theme
onTap: () {
    setState(() {
        isDark=false;
    });
},
 
```



