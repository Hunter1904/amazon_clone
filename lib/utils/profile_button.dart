import 'dart:ui';

import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  String text;
  VoidCallback onTap;
  ProfileButton({super.key , required this.text , required this.onTap });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal:10 , vertical:10 ),
        height: 40,
      
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white , width: 0.2),
          borderRadius: BorderRadius.circular(50)
        ),
      
        child: OutlinedButton(
      
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black12.withOpacity(0.05),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50)
            )
          ),
      
            onPressed: () {
            onTap();
        }, child: Text(text,style: TextStyle(fontSize: 20 ,color: Colors.black),)),
      ),
    );
  }
}
