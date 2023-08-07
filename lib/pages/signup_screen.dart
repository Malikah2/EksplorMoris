import 'package:example/pages/login_screen.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              SizedBox(height: 25,),
              Image.asset('assets/login.png',height: 200,),
              SizedBox(height: 1), // adding spacing between image and text
              Text('Welcome!',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),


              Form(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20.0 ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person_outline_outlined),
                          labelText: 'Username',
                          hintText: 'Enter your username',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person_outline_outlined),
                          labelText: 'Email',
                          hintText: 'Enter your email',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
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
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
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
                      label: Text('Sign in with Google'),
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