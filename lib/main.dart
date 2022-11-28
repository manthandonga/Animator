import 'package:flutter/material.dart';
import 'package:galaxy_planets_app/home_page.dart';
import 'package:galaxy_planets_app/planets_details_page.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'HomePage',
    routes: {
      'HomePage': (context) => const HomePage(),
      'DetailScreenPage': (context) => const DetailScreenPage()
    },
  ));
}