import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_shop/LoginScreen.dart';
import 'package:pet_shop/RegisterScreen.dart';
import 'package:pet_shop/SignupController.dart';
import 'package:pet_shop/Utils.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // add controllers for email and password textfields
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final controller= Get.put(SignupController());
    final _formkey = GlobalKey<FormState>();

    return MaterialApp(
      home: Scaffold(
          // devide screen using stack widget and add background image in half screen and half white background
          body: Stack(
        children: [
          // add back arrow button here

          Image(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Get.to(LoginScreen());
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150, left: 30),
            child: Text(
              'Sign In\n',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 45,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 500),
            child: Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: Text(
                          'Or Continue with',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      // add  circular button here in Row widget in center of the screen for facebook and google and add only icons in buttons
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // add facebook button here
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.facebook,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue,
                                  minimumSize: Size(60, 60),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                            ),
                            // add google button here
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.g_mobiledata,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.red,
                                  minimumSize: Size(60, 60),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // add login text here below the buttons
                      Padding(
                        padding: const EdgeInsets.only(top: 80),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\'t have an account?',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                // using GetX navigation goto LoginScreen
                                Get.to(() => RegisterScreen());
                              },
                              child: Text(
                                'Registration',
                                style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 10,
                    spreadRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              margin: EdgeInsets.only(top: 250, left: 30, right: 30),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    // add email textfield here
                    TextFields(
                        title: 'Enter your Email',
                        hintText: 'Email',
                        controller: controller.email),
                    TextFields(
                        title: 'Password',
                        hintText: 'password',
                        controller: controller.password),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 200),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: ElevatedButton(
                        onPressed: () {

                          // add firebase auth code here

                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blueAccent,
                          minimumSize: Size(300, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

