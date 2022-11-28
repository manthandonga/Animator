import 'dart:async';
import 'package:flutter/material.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    super.initState();
    duration();
  }

  duration() async {
    await Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('home_page');
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        alignment: Alignment.center,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Spacer(),
            Hero(
              tag: 'hero',
              child: Text(
                "BMI Calculator",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  decoration: TextDecoration.none
                ),
              ),
            ),
            SizedBox(height: 30),
            CircularProgressIndicator(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
