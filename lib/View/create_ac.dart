import 'package:amazon_clone/View/sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateAc extends StatelessWidget{

  var EmailText = TextEditingController();
  var passText = TextEditingController();
  var nameText = TextEditingController();

  CreateAc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            title: Container(
              height: 100,
              child: Image.asset('assets/images/am_logo.png'),
            ),
            centerTitle: true
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                SizedBox(
                  height: 11,
                ),

                Text("Sign in or create account",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),

                SizedBox(
                  height: 11,
                ),

                TextField(
                  controller: EmailText,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                      hintText: "Enter Your Name",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide:
                          BorderSide(color: Colors.deepOrange, width: 2)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.blueAccent,
                          )),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.black,
                          )),
                      prefixIcon: Icon(
                          Icons.people,
                          color: Colors.orange
                      )
                  ),
                ),

                SizedBox(
                  height: 11,
                ),

                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Your Email",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide:
                        BorderSide(color: Colors.deepOrange, width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.blueAccent,
                        )),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.black,
                        )),
                    prefixIcon:Icon(
                      Icons.phone,
                      color: Colors.orange,
                    ),
                  ),
                  controller: EmailText,
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 11,
                ),
                TextField(
                  controller: passText,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                      hintText: "Enter Password",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide:
                          BorderSide(color: Colors.deepOrange, width: 2)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.blueAccent,
                          )),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.black,
                          )),
                      prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.orange
                      )
                  ),
                ),
                SizedBox(
                  height: 11,
                ),
                TextField(
                  controller: passText,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                      hintText: "Re Enter Password",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide:
                          BorderSide(color: Colors.deepOrange, width: 2)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.blueAccent,
                          )),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.black,
                          )),
                      prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.orange
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: InkWell(onTap: (){},
                    child: Container(padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/4,vertical: 20),decoration:BoxDecoration(color: Colors.orange.shade200 ,  border: Border.all(
                      color: Colors.black, // Border color
                      width: 2, // Border width
                    ),) ,child: Text( "Create Account",style: TextStyle(fontSize: 15, color: Colors.black ,fontWeight: FontWeight.bold),),),
                  )
                ),

                Divider(
                  thickness: 1,
                ),

                Text("Already a Customer",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

                Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: InkWell(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
                    },
                      child: Container(padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/4,vertical: 20),decoration:BoxDecoration(color: Colors.orange.shade200 ,  border: Border.all(
                        color: Colors.black, // Border color
                        width: 2, // Border width
                      ),) ,child: Text( "Sign in",style: TextStyle(fontSize: 15, color: Colors.black ,fontWeight: FontWeight.bold),),),
                    )
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}