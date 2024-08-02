import 'package:amazon_clone/View/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      // onGenerateRoute: (settings) => generateRoute(settings),

      title: 'Amazon Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,

        // appBarTheme: AppBarTheme(
        //
        //   color: Colors.white, // Set your desired AppBar color here
        // ),

      ),
      home: SplashScreen()
    );
  }
}

class MyHomePage extends StatefulWidget {


  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),      body:
        Text("Hello Amazon")
    );
  }
}
