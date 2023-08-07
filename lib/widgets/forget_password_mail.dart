import 'package:flutter/material.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,

          children:  [
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(height: 250,
                child: Image.asset('assets/password.png', width: 150, ),
              ),
            ),
             // adding spacing between image and text
            Text('Welcome Back!',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Please log in to continue.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),

            ),
            SizedBox(height: 15,),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text("Email"),
                      hintText: ("Enter your email address."),
                      prefixIcon: Icon(Icons.mail_outline_rounded),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20.0,),
                  SizedBox(width: 200,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Next")),
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