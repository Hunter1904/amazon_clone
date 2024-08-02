import 'dart:async';
import 'package:amazon_clone/View/login_info.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {


  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginInfo()));
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container(
          height: 230,
          width: 230,
          child: Image.asset('assets/images/am_logo.png')))
    );
  }
}
