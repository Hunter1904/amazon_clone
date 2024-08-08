import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  String imageUrl;
  SingleProduct({super.key , required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: DecoratedBox(
        decoration: BoxDecoration(border: Border.all(color: Colors.black38 , width: 0.5 ), borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Container(
          width: 180,
          padding: EdgeInsets.all(10.0),
          height: 200,
          child: Image.network(imageUrl),
        ),
      ),
    );
  }
}
