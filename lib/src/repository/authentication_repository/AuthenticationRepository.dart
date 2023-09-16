import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../../LoginScreen.dart';
import '../../../MainScreen.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  // crate auth instance
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, (callback) => _setInitialScreen);
  }

  void registerUser(String email, String password) {}

  void loginUser(String email, String password) {}

  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => LoginScreen())
        : Get.offAll(() => MainScreen());
  }

  Future<void> createUserwithEmailandPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => MainScreen())
          : Get.offAll(() => LoginScreen());
    } on FirebaseAuthException catch (e) {
    } catch (e) {
      print(e);
    }
  }

  Future<void> LoginUserwithEmailandPassword(
      String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
    } catch (e) {
      print(e);
    }
  }

  Future<void> logout() async {
    try {
      await _auth.signOut();
    } catch (e) {
      print(e);
    }
  }
// function for logout
}
