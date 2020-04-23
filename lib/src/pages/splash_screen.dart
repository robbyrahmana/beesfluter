import 'dart:async';

import 'package:bees_student/helpers/helper.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({this.isLoggedIn});

  final bool isLoggedIn;
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    if (widget.isLoggedIn != null) {
      Timer(Duration(seconds: 1), () {
        if (widget.isLoggedIn) {
          Navigator.pushReplacementNamed(context, Routes.mainPage);
        } else {
          Navigator.pushReplacementNamed(context, Routes.loginPage);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Splash screen")));
  }
}
