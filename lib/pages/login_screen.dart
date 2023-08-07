import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Image.asset('assets/login.png'),
              SizedBox(height: 1), // adding spacing between image and text
              Text('Welcome Back!',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 5),
              Text(
                'Please log in to continue.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),

              Form(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20.0 ),
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
                      const SizedBox(height: 0),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(onPressed: () {}, child: Text('Forgot Password?'),),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
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
                      icon: Image.asset('assets/google.png', width: 20.0,),
                        onPressed: () {},
                        label: Text('Sign in with Google'),
                    ),
                  ),
                  const SizedBox(height: 1,),
                  TextButton(
                      onPressed: () {},
                      child: const Text.rich(
                        TextSpan(
                          text: ('Already have an Account?'),
                          style: TextStyle(
                          color: Colors.black,
                          ),
                          children: const [
                            TextSpan(
                              text: ('Sign Up'),
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