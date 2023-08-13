import 'package:example/repository/authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  //Textfield controllers to get data from TextField
final username = TextEditingController();
final email = TextEditingController();
final password = TextEditingController();

//call this function from design and it will do the rest
void registerUser(String email, String password){
AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
}
}