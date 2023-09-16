import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_shop/Login.dart';
import 'package:pet_shop/LoginScreen.dart';
import 'package:pet_shop/MainScreen.dart';
import 'package:pet_shop/RegisterScreen.dart';
import 'package:pet_shop/SplashScreen.dart';
import 'package:pet_shop/src/repository/authentication_repository/AuthenticationRepository.dart';

import 'firebase_options.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/SplashScreen',
      getPages: [
        GetPage(name: '/SplashScreen', page: () => Splashscreen()),
        GetPage(name: '/LoginScreen', page: () => LoginScreen()),
        GetPage(name: '/RegisterScreen', page: () => RegisterScreen()),
        GetPage(name: '/login', page: () => Login()),
        GetPage(name: '/MainScreen', page: () => MainScreen()),
      ],
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
    );
  }
}
