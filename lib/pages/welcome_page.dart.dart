import 'package:example/pages/login_screen.dart';
import 'package:example/pages/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class WelcomePage extends StatelessWidget {
   WelcomePage({Key? key}) : super(key: key);
FlutterTts flutterTts = FlutterTts();
   Future<void> speakText(String text) async {
     await flutterTts.setLanguage("en-US");
     await flutterTts.speak(text);
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Spacer(),
                Image.asset(
                  'assets/illustration.png',
                ),
                const SizedBox(height: 40),
                GestureDetector(
                  onTap: (){
                    speakText("Your gateway to discovering the \n breathtaking beauty of Mauritius is here!",
                    );
                  },
                  child: Text(
                    "Your gateway to discovering the \n breathtaking beauty of Mauritius is here!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: (){
                    speakText("Embark on a journey to explore the hidden gems and iconic landmarks that make Mauritius a tropical paradise like no other.",
                    );
                  },
                  child: const Text(
                    "Embark on a journey to explore the hidden gems and iconic landmarks that make Mauritius a tropical paradise like no other.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: const StadiumBorder(),
                            padding: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 10.0,
                            ),
                          ),
                          child: GestureDetector(
                            onTap: (){
                              speakText("Login");
                            },
                              child: const Text("Login")),
                        ),
                      ),
                      SizedBox(height: 10), // Add some spacing
                      SizedBox(
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpScreen(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: const StadiumBorder(),
                            padding: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 8.0,
                            ),
                          ),
                          child: GestureDetector(
                            onTap: (){
                              speakText("Sign Up");
                            },
                              child: const Text("Sign Up")),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
