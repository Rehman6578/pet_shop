import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_shop/MainScreen.dart';
import 'package:pet_shop/RegisterScreen.dart';
import 'Login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.blueAccent,

        body: Stack(
          children: [
            Image(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150, left: 30),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Welcome\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 55,
                      ),
                    ),
                    TextSpan(
                      text: 'to ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 45,
                      ),
                    ),
                    TextSpan(
                      text: 'Pet Care',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow,
                        fontSize: 45,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Continue with ',
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 18,
                          ),
                        ),
                        TextSpan(
                          text: 'Facebook',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: Size(300, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Continue with ',
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 18,
                          ),
                        ),
                        TextSpan(
                          text: 'Google',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    minimumSize: Size(300, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ),

            // add a another button for continue with email with only border and set button backround to transparent

            Padding(
              padding: const EdgeInsets.only(top: 400),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => RegisterScreen());
                    Get.snackbar("Registration", "Register with Email",
                        snackPosition: SnackPosition.BOTTOM,
                        backgroundColor: Colors.blueAccent,
                        colorText: Colors.white,
                        borderRadius: 30,
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(20),
                        icon: Icon(Icons.pets));
                  },
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Register with ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        TextSpan(
                          text: 'Email',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    minimumSize: Size(300, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: BorderSide(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // add text 'Already have an account? Login' at the bottom of the screen

            Padding(
              padding: const EdgeInsets.only(top: 750),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // using GetX navigation goto LoginScreen
                      Get.to(() => MainScreen());
                    },
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
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
    );
  }
}
