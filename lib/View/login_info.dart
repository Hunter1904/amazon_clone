import 'package:amazon_clone/View/create_ac.dart';
import 'package:amazon_clone/View/home_screen.dart';
import 'package:amazon_clone/View/sign_in.dart';
import 'package:amazon_clone/utils/bottom_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 100,
          child: Image.asset('assets/images/am_logo.png'),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Sign in to your account" , style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("View your wish list" ,style: TextStyle(fontSize: 18),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Find and Record Past Purchases",style: TextStyle(fontSize: 18),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Track your purchases",style: TextStyle(fontSize:18),),
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child:  InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
                },
                  child: Container(padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/4-15,vertical: 20),decoration:BoxDecoration(color: Colors.orange.shade200 ,  border: Border.all(
                    color: Colors.black, // Border color
                    width: 2, // Border width
                  ),) ,child: Text("Already a customer? Sign in" ,style: TextStyle(fontSize: 15, color: Colors.black ,fontWeight: FontWeight.bold),),),
                )
              ),

              SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child:  InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAc()));
                },
                  child: Container(padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/4-50,vertical: 20),decoration:BoxDecoration(color: Colors.orange.shade200 ,  border: Border.all(
                    color: Colors.black, // Border color
                    width: 2, // Border width
                  ),) ,child: Text("New to amazon.in? Create an account",style: TextStyle(fontSize: 15, color: Colors.black ,fontWeight: FontWeight.bold),),),
                )
              ),

              SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                InkWell(onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => BottomNavBar()));
                },
                  child: Container(padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/4,vertical: 20),decoration:BoxDecoration(color: Colors.orange.shade200 ,  border: Border.all(
                    color: Colors.black, // Border color
                    width: 2, // Border width
                  ),) ,child: Text( "Skip Sign in",style: TextStyle(fontSize: 15, color: Colors.black ,fontWeight: FontWeight.bold),),),
                )
              ),


            ],
          ),
        ),
      ),
    );
  }
}
