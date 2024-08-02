import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget{

  var EmailText = TextEditingController();
  var passText = TextEditingController();

  SignIn({super.key});

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
       child: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [

             Text("Sign in to Your Account",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),

             SizedBox(
               height: 30,
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
             Padding(
               padding: const EdgeInsets.all(30.0),
               child: InkWell(onTap: (){},
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
   );
  }
}