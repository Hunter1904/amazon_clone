import "package:amazon_clone/View/home_screen.dart";
import "package:amazon_clone/View/login_info.dart";
import "package:amazon_clone/View/sign_in.dart";
import "package:flutter/material.dart";

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int screen_index = 0;

  List<Widget> screens = [
      HomeScreen(),
      SignIn(),
  ];

  updateScreen(int index){
    setState(() {
      screen_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[screen_index],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor : Colors.black,
        onTap: updateScreen,
        iconSize: 20,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home ,color: screen_index == 0 ? Colors.blueGrey : Colors.black  ,) , label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person, color: screen_index == 1 ? Colors.blueGrey : Colors.black ), label: ""),
        ],
      ),
    );
  }
}
