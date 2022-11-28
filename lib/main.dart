import 'package:flutter/material.dart';
import 'Splash_Screen.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:  "Splash_Screen",
      routes: {
        "home_page": (context) => Homepage(),
        "Splash_Screen": (context) => Splash_Screen(),
      },
    ); // MaterialApp
  }
}
