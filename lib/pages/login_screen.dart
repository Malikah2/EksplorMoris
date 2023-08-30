import 'package:example/pages/signup_screen.dart';
import 'package:example/widgets/forget_password_mail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_widget.dart';
import 'package:flutter_tts/flutter_tts.dart';

class LoginScreen extends StatelessWidget {
  final FlutterTts flutterTts = FlutterTts();
   LoginScreen({Key? key}) : super(key: key);

   Future<void> speakText(String text) async {
     await flutterTts.setLanguage("en-US");
     await flutterTts.speak(text);
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Image.asset('assets/login.png', height: 200),
              SizedBox(height: 1), // adding spacing between image and text
              GestureDetector(
                onTap: () {
                  speakText("Welcome Back!");
                },
                child: Text(
                  'Welcome Back!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 5),
              GestureDetector(
                onTap: () {
                  speakText('Please log in to continue.');
                },
                child: Text(
                  'Please log in to continue.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ),

              Form(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person_outline_outlined),
                          labelText: 'Email',
                          hintText: 'Enter your email',
                          border: OutlineInputBorder(),
                        ),
                        onTap: () {
                          speakText("Enter your email");
                        },
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.password),
                          labelText: 'Password',
                          hintText: 'Enter your password',
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                            onPressed: null,
                            icon: Icon(Icons.remove_red_eye_sharp),
                          ),
                        ),
                        onTap: () {
                          speakText("Enter your password");
                        },
                      ),
                      const SizedBox(height: 0),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              builder: (context) => Container(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Make Selection",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Choose one of the options.",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                        Get.to(() => const ForgetPasswordMailScreen());
                                        speakText('Reset via E-mail Verification');
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(16),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: Colors.grey.shade200,
                                        ),
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.mail_outline_rounded,
                                              size: 60.0,
                                            ),
                                            const SizedBox(
                                              width: 10.0,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "E-mail",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  "Reset via E-Mail verification.",
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        speakText("Reset via phone verification");
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(20.0),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: Colors.grey.shade200,
                                        ),
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.mobile_friendly_rounded,
                                              size: 55,
                                            ),
                                            const SizedBox(
                                              width: 10.0,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Phone Number",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  "Reset via Phone verification.",
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                          child: Text('Forgot Password?'),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Home(),
                              ),
                            );
                            speakText('Login');
                          },
                          child: Text('Login'),
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
                  SizedBox(
                    width: 200,
                    child: OutlinedButton.icon(
                      icon: Image.asset(
                        'assets/google.png',
                        width: 20.0,
                      ),
                      onPressed: () {},
                      label: GestureDetector(
                        onTap: () {
                          speakText("Sign in with Google");
                        },
                          child: Text('Sign in with Google')),
                    ),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        );
                      },
                      child: const Text.rich(TextSpan(
                          text: ("Don't have an Account?"),
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          children: const [
                            TextSpan(
                              text: ('Sign Up'),
                              style: TextStyle(color: Colors.blue),
                            ),
                          ]))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
