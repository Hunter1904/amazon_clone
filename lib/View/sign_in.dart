import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget{

  var EmailText = TextEditingController();
  var passText = TextEditingController();

  var signInKey = GlobalKey<FormState>();

  void signInSubmit(){
    final isValid = signInKey.currentState!.validate();
    if(!isValid){
      return;
    }
    signInKey.currentState!.save();
  }

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
         child: Form(
           key: signInKey,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
           
               Text("Sign in to Your Account",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
           
               SizedBox(
                 height: 30,
               ),
           
               TextFormField(
                 validator: (value){
                   if(value!.isEmpty || !RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(value)){
                     return "Enter a Valid Email";
                   }
                   return null;
                 },
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
               TextFormField(
                 validator: (value){
                   RegExp regex =
                   RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                   if (value!.isEmpty) {
                     return 'Please enter password';
                   } else {
                     if (!regex.hasMatch(value)) {
                       return 'Enter valid password';
                     } else {
                       return null;
                     }
                   }
                 },
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
                 child: InkWell(onTap: () => signInSubmit() ,
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