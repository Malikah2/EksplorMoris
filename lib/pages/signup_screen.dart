import 'package:example/pages/login_screen.dart';
import 'package:example/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'home_widget.dart';


class SignUpScreen extends StatelessWidget {
   SignUpScreen({Key? key}) : super(key: key);
FlutterTts flutterTts = FlutterTts();
   Future<void> speakText(String text) async {
     await flutterTts.setLanguage("en-US");
     await flutterTts.speak(text);
   }
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              SizedBox(height: 25,),
              Image.asset('assets/login.png',height: 200,),
              SizedBox(height: 1), // adding spacing between image and text
              GestureDetector(
                onTap: (){
                  speakText("Welcome");
                },
                child: Text('Welcome!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 5),


              Form(
                key: _formKey,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20.0 ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        controller: controller.username,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person_outline_outlined),
                          labelText: 'Username',
                          hintText: 'Enter your username',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: controller.email,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person_outline_outlined),
                          labelText: 'Email',
                          hintText: 'Enter your email',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: controller.password,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.fingerprint),
                          labelText: 'Password',
                          hintText: 'Enter your password',
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                            onPressed: null,
                            icon: Icon(Icons.remove_red_eye_sharp),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),

                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          // onPressed: () {
                          //  if (_formKey.currentState!.validate()){
                          //    SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());
                          //  }
                          // },
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Home(),
                              ),
                            );
                            speakText('SignUp');
                          },

                          child: Text('SignUp'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('OR'),
                  SizedBox(height: 10,),
                  SizedBox(
                    width: 200,
                    child: OutlinedButton.icon(
                      icon: Image.asset('assets/google.png', width: 20.0,),
                      onPressed: () {},
                      label: GestureDetector(
                        onTap: (){
                          speakText("Sign in with Google");
                        },
                          child: Text('Sign in with Google')),
                    ),
                  ),
                  const SizedBox(height: 1,),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      child: const Text.rich(
                          TextSpan(
                              text: ('Already have an Account?'),
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              children: const [
                                TextSpan(
                                  text: ('Login'),
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ]
                          )
                      )
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}