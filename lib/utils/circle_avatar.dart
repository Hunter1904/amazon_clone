import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Circle_Avatar extends StatelessWidget {
  final String imageUrl;
  final String productName;

  Circle_Avatar({super.key, required this.imageUrl, required this.productName});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 110,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
                maxRadius: 30,
              ),
            ),
            SizedBox(height: 5),// Space between the avatar and text
            Text(
              productName,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500
              ),
            ),
          ],
        ),
      );
  }
}
