import 'package:flutter/material.dart';

class SignUpWithEmailAndPasswordFailure {
  final String message;

  const SignUpWithEmailAndPasswordFailure([this.message = "An unknown error occurred."]);

  factory SignUpWithEmailAndPasswordFailure.code(String code) {
    switch(code){
      case "weak-password" :
        return const SignUpWithEmailAndPasswordFailure('Please enter a stronger password.');
      case "Invalid-email" :
        return const SignUpWithEmailAndPasswordFailure('Email is not valid.');
      case "email-already-in-use" :
        return const SignUpWithEmailAndPasswordFailure('An account already exists for that email.');

      default:
        return const SignUpWithEmailAndPasswordFailure();
    }
  }
}
