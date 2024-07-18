# advflutter_ch1





# 1.1 Theme change
<div> 
  <img src = "https://github.com/mayuuu05/AdvFlutterCh1/assets/149376263/2985b6e5-1875-431e-bd6f-794ef22f47f0"  height=35% width=22%  />
   <img src = "https://github.com/mayuuu05/AdvFlutterCh1/assets/149376263/357395a3-39c5-4688-8052-9c93af280db9"  height=35% width=22%  />
</div>

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
# 1.2 Create Registration Page using Stepper Widget

<div> 
  <img src = "https://github.com/mayuuu05/AdvFlutterCh1/assets/149376263/7e1f5abc-1dce-452a-bd86-2bb9d6076191"  height=35% width=22%  />
   <img src = "https://github.com/mayuuu05/AdvFlutterCh1/assets/149376263/8f310ed0-4507-4750-920c-7627f4c147ff"  height=35% width=22%  />


# 1.3 Provider Tree
</div>
<div align="center">
<img height="550" src="https://github.com/mayuuu05/AdvFlutterCh1/assets/149376263/011398fb-a4dd-43c6-b891-6c3460c110e2"/>
</div>

## State
- A state is information that can be read when the widget is built and might change or modified over a lifetime of the app.

- If you want to change your widget, you need to update the state object, which can be done by using the setState() function available for Stateful widgets.

## State management

- The state management is one of the most popular and necessary processes in the lifecycle of an application. 

- A state is information that can be read when the widget is built and might change or modified over a lifetime of the app. 

- If you want to change your widget, you need to update the state object, which can be done by using the setState() function available for Stateful widgets. The setState() function allows us to set the properties of the state object that triggers a redraw of the UI.

## There are Two way describe the state management?

- Treditioinal state management - 
    
    State management refers to managing data across widgets, screens, and over time in a Flutter application.

    setState();

- Provider state management -


    The Provider is a state management solution that extends and simplifies Inherited Widgets. It is a versatile and powerful state manager that allows you to deliver data to any widget in your app.

     - ChangeNotifer
     - ChangeNotiferProvider
     - Cousumer

## ChangeNotifer

- ChangeNotifier is a simple class, which provides change notification to its listeners.
- It is easy to understand, implement, and optimized for a small number of listeners.
- It is used for the listener to observe a model for changes. 
- In this, we only use the notifyListener() method to inform the listeners.

Example:
```bash
import 'package:flutter/material.dart';  
  
class Counter with ChangeNotifier {  
  int _counter;  
  
  Counter(this._counter);  
  
  getCounter() => _counter;  
  setCounter(int counter) => _counter = counter;  
  
  void increment() {  
    _counter++;  
    notifyListeners();  
  }  
  
  void decrement() {  
    _counter--;  
    notifyListeners();  
  }  
}  
```
## ChangeNotiferProvider

- ChangeNotifierProvider is the widget that provides an instance of a ChangeNotifier to its descendants. 
- It comes from the provider package.
- The following code snippets help to understand the concept of ChangeNotifierProvider.

Example:
```bash
void main() {  
  runApp(  
    MultiProvider(  
      providers: [  
        ChangeNotifierProvider(builder: (context) => Counter()),  
        Provider(builder: (context) => SomeOtherClass()),  
      ],  
      child: MyApp(),  
    ),  
  );  
}  
```
## Cousumer

- It is a type of provider that does not do any fancy work.
-  It just calls the provider in a new widget and delegates its build implementation to the builder.
- The following code explains it more clearly.

Example:
```bash
return Consumer<Counter>(  
  builder: (context, count, child) {  
    return Text("Total price: ${count.total}");  
  },  
);  
```


# 1.4 Provider & Change Theme using Provider

<div> 
  <img src = "https://github.com/mayuuu05/AdvFlutterCh1/assets/149376263/71de64a0-1ece-47b8-ae73-24a209a84108"  height=35% width=22%  />
   <img src = "https://github.com/mayuuu05/AdvFlutterCh1/assets/149376263/93725978-3223-4705-bf47-50f3277d34bd"  height=35% width=22%  />

  <video height="450" src="https://github.com/mayuuu05/AdvFlutterCh1/assets/149376263/d13a48fd-80f1-4658-a52e-7ab1b404b628" />
</div>


# 1.5 Quotes Data Solving with Provider

<div> 
  <img src = "https://github.com/mayuuu05/AdvFlutterCh1/assets/149376263/3e47c158-666c-421b-b81f-552dd175fa0d"  height=35% width=22%  />
   <img src = "https://github.com/mayuuu05/AdvFlutterCh1/assets/149376263/3cefafc2-229c-4e4c-b642-fe5f95a80ad6"  height=35% width=22%  />
   <img src = "https://github.com/mayuuu05/AdvFlutterCh1/assets/149376263/e012bfd0-c309-4cda-835f-557b494382e9"  height=35% width=22%  />
   <img src = "https://github.com/mayuuu05/AdvFlutterCh1/assets/149376263/49a6c82f-0763-46fd-8c71-d76a8cf5191a"  height=35% width=22%  />

  <video height="450" src="https://github.com/mayuuu05/AdvFlutterCh1/assets/149376263/06d14c05-9167-4b99-bbd2-254dea900ed4" />
</div>


# 1.6 One Time Intro Screen in Flutter 

<div> 
  <img src = "https://github.com/user-attachments/assets/f912d68d-cdec-4c26-94b5-43c71c77e42b"  height=35% width=22%  />
   <img src = "https://github.com/user-attachments/assets/aea4213c-252c-440f-9d61-ee6a62d7988f"  height=35% width=22%  />
   <img src = "https://github.com/user-attachments/assets/3efff2cc-806c-452e-8fb7-ddef93d409ab"  height=35% width=22%  />
   <img src = "https://github.com/user-attachments/assets/97aa5592-685e-47e6-8222-074486d5b553"  height=35% width=22%  />
    <img src = "https://github.com/user-attachments/assets/ae893d71-8c8b-4d8c-b079-8009fff55d2e"  height=35% width=22%  />

  <video height="450" src="https://github.com/user-attachments/assets/913725b4-4cbe-42fe-bb74-4ed75de4987b" />
</div>



# 1.6(2) Contact Us Page With Interaction

<div> 
  <img src = "https://github.com/user-attachments/assets/4d9f7ba6-5a04-433d-895d-3632bd269464"  height=35% width=22%  />
   <img src = "https://github.com/user-attachments/assets/fe4f725b-be0a-44bd-b6c1-8335e8d970ed"  height=35% width=22%  />
   <img src = "https://github.com/user-attachments/assets/56c7c918-f402-4b43-900d-693d88932b1e"  height=35% width=22%  />
   <img src = "https://github.com/user-attachments/assets/126e385a-ca74-4211-a75e-25cff1a1cfcc"  height=35% width=22%  />
    <img src = "https://github.com/user-attachments/assets/30c4c729-79a7-4e03-8d3a-1a2ddaa6b477"  height=35% width=22%  />
      <img src = "https://github.com/user-attachments/assets/8d3c8c39-0e16-47d1-8191-323109091d37"  height=35% width=22%  />
        <img src = "https://github.com/user-attachments/assets/781d016c-d96f-4437-a7c7-b2bd18d7099e"  height=35% width=22%  />

  <video height="450" src="https://github.com/user-attachments/assets/16f6c55c-75ca-49b3-9568-ad477df9fc60" />
</div>

# 1.7 Photo Gallery With Biometric Authentication

<div> 
  
   <img src = "https://github.com/user-attachments/assets/23dd2be4-11e6-4c12-a3af-09846c43e513"  height=35% width=22%  />
   <img src = "https://github.com/user-attachments/assets/97322835-e66d-4b02-80bf-75f0596144d8"  height=35% width=22%  />
   <img src = "https://github.com/user-attachments/assets/407edeca-627b-48a0-90fc-6e828883a342"  height=35% width=22%  />
    <img src = "https://github.com/user-attachments/assets/ca767e92-c560-4990-8715-f92ba0765997"  height=35% width=22%  />
   <img src = "https://github.com/user-attachments/assets/d9ae5954-b224-491d-9f3b-72e29b62b813"  height=35% width=22%  />

  <video height="450" src="https://github.com/user-attachments/assets/57b44943-fb73-4598-844e-f7d66d82cb04" />
</div>












