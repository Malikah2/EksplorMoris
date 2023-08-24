import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileDetailsPage extends StatelessWidget {
  final String username;
  final String email;
  final String profileImage;

  ProfileDetailsPage({
    required this.username,
    required this.email,
    required this.profileImage,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Profile Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(profileImage),
              ),
            ),
            SizedBox(height: 20,),
            Text(
              "Username: $username",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              "Email: $email",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}