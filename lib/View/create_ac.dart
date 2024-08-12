import 'package:amazon_clone/View/sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateAc extends StatelessWidget {
  var EmailText = TextEditingController();
  var passText = TextEditingController();
  var rePassText = TextEditingController();
  var nameText = TextEditingController();

  CreateAc({super.key});

  var signUpKey = GlobalKey<FormState>();

  void signUpSubmit() {
    final isValid = signUpKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    signUpKey.currentState!.save();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: screenSize.height * 0.1,
          child: Image.asset('assets/images/am_logo.png'),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(screenSize.width * 0.04),
        child: SingleChildScrollView(
          child: Center(
            child: Form(
              key: signUpKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  Text(
                    "Sign in or create account",
                    style: TextStyle(
                      fontSize: screenSize.width * 0.06,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter your name";
                      }
                      return null;
                    },
                    controller: nameText,
                    decoration: InputDecoration(
                      hintText: "Enter Your Name",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.deepOrange, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.blueAccent),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      prefixIcon: Icon(
                        Icons.people,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(value)) {
                        return "Enter a Valid Email";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Your Email",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.deepOrange, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.blueAccent),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Colors.orange,
                      ),
                    ),
                    controller: EmailText,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  TextFormField(
                    validator: (value) {
                      RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                      if (value!.isEmpty) {
                        return 'Please enter password';
                      } else if (!regex.hasMatch(value)) {
                        return 'Enter valid password';
                      }
                      return null;
                    },
                    controller: passText,
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.deepOrange, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.blueAccent),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  TextFormField(
                    validator: (value) {
                      RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                      if (value!.isEmpty) {
                        return 'Please enter password';
                      } else if (!regex.hasMatch(value)) {
                        return 'Enter valid password';
                      }
                      return null;
                    },
                    controller: rePassText,
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      hintText: "Re Enter Password",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.deepOrange, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.blueAccent),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(screenSize.width * 0.075),
                    child: InkWell(
                      onTap: () => signUpSubmit(),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: screenSize.width * 0.20,
                          vertical: screenSize.height * 0.02,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.orange.shade200,
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                        child: Text(
                          "Create Account",
                          style: TextStyle(
                            fontSize: screenSize.width * 0.04,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Text(
                    "Already a Customer",
                    style: TextStyle(
                      fontSize: screenSize.width * 0.05,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(screenSize.width * 0.075),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignIn()),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: screenSize.width * 0.25,
                          vertical: screenSize.height * 0.02,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.orange.shade200,
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                            fontSize: screenSize.width * 0.04,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
