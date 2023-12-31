import 'package:example/pages/home_page.dart';
import 'package:example/pages/welcome_page.dart.dart';
import 'package:example/repository/authentication_repository/exceptions/signup_email_password_failure.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  //Variable
final _auth = FirebaseAuth.instance;
late final Rx<User?> firebaseUser;

@override
  void onReady() {
  firebaseUser = Rx<User?>(_auth.currentUser);
  firebaseUser.bindStream(_auth.userChanges());
  ever(firebaseUser, _setInitialScreen);
}

_setInitialScreen(User? user) {
  user == null ? Get.offAll(() =>  WelcomePage()) : Get.offAll(() => const HomePage());
}

Future<void> createUserWithEmailAndPassword(String email, String password) async {
  try {
    await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
    firebaseUser.value != null ? Get.offAll(() => const HomePage()) : Get.to(() => WelcomePage());
  } on FirebaseAuthException catch(e) {
    final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
    print('FIREBASE AUTHH EXCEPTION - ${ex.message}');
    throw ex;
  }catch (_){
    const ex = SignUpWithEmailAndPasswordFailure();
    print('EXCEPTION - ${ex.message}');
    throw ex;
  }
  }

  Future<void> loginWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch(e) {

    }catch (_){}
  }

  Future<void> logout() async => await _auth.signOut();

}