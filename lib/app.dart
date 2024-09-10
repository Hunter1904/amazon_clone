import 'package:amazon_clone/View/splashScreen.dart';
import 'package:amazon_clone/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        title: 'Amazon Clone',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system ,
        theme: TAppTheme.lightTheme,
        darkTheme: TAppTheme.darkTheme,
        home: SplashScreen(),
    );
  }
}