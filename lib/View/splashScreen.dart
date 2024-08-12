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

    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginInfo()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Container(
          height: screenSize.height * 0.3,
          width: screenSize.width * 0.5,
          child: Image.asset('assets/images/am_logo.png', fit: BoxFit.contain),
        ),
      ),
    );
  }
}
