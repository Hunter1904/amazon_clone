import 'package:amazon_clone/utils/profile_button.dart';
import 'package:amazon_clone/utils/singleProduct.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBar(

              flexibleSpace: Container(
                decoration: BoxDecoration(color: Colors.lightBlueAccent),
              ),
              title: Row(children: [ Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Image.asset('assets/images/am_logo.png' , height: 100),
              ),
              Spacer(),
              IconButton(onPressed: (){}, icon: Icon(Icons.notifications , size: 27,)),
              SizedBox(width:20),
              IconButton(onPressed: (){}, icon: Icon(Icons.search, size: 27,)),
              ]
            ),
        ),
        ),

            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
                      child: Text(("Hey👋! Username " ), style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w400 ),)),
              
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ProfileButton(text: "Your Orders" , onTap: (){},),
                      ProfileButton(text: "Buy Again",onTap: (){},)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ProfileButton(text: "Your Account",onTap: (){},),
                      ProfileButton(text: "Your Wishlists",onTap: (){},)
                    ],
                  ),
              
                  SizedBox(
                    height: 15,
                  ),
              
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
                      child: Text("Your Orders" , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),)),
              
                  SizedBox(
                    height: 10,
                  ),
              
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SingleProduct(imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9YQ-XOZxnZ8uH0qnG9_1iYs61Yxko6AuGWg&s"),
                        SingleProduct(imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWjZ-6BdTya9CXslHzasdZgcNRGX5WTQwh3A&s"),
                        SingleProduct(imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9YQ-XOZxnZ8uH0qnG9_1iYs61Yxko6AuGWg&s"),
                        SingleProduct(imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWjZ-6BdTya9CXslHzasdZgcNRGX5WTQwh3A&s"),
                      ],
                    ),
                  ),
              
                  SizedBox(
                    height: 10,
                  ),
              
                  Divider(thickness:3),
              
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
                      child: Text("Keep shopping For " , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),)),

                  Wrap(
                    children: [
                      SingleProduct(imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9YQ-XOZxnZ8uH0qnG9_1iYs61Yxko6AuGWg&s"),
                      SingleProduct(imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWjZ-6BdTya9CXslHzasdZgcNRGX5WTQwh3A&s"),
                      SingleProduct(imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9YQ-XOZxnZ8uH0qnG9_1iYs61Yxko6AuGWg&s"),
                      SingleProduct(imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWjZ-6BdTya9CXslHzasdZgcNRGX5WTQwh3A&s"),
                    ],
                  ),

                ],

                  ),
            ),

    );
  }
}
