import 'package:example/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'home_widget.dart';
import 'package:example/pages/other_page.dart';
import 'package:ionicons/ionicons.dart';
import 'package:example/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'hotline/hotlines.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(14),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Profile",
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 115,
                  width: 115,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/profile/avatar.jpg"),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: ElevatedButton(
                onPressed: () {
                  // Handle "View your profile details" button press here
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  primary: Colors.white,
                  minimumSize: Size(250, 0),
                ),
                child: Row(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        "assets/profile/accountlogo.png",
                        width: 25,
                        height: 25,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "View your profile details              ",
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20), // Add extra space here
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: ElevatedButton(
                onPressed: () {
                  // Handle "Settings" button press here
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  primary: Colors.white,
                  minimumSize: Size(250, 0),
                ),
                child: Row(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        "assets/profile/settings.png",
                        width: 25,
                        height: 25,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Settings                              ",
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20), // Add extra space here
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: ElevatedButton(
                onPressed: () {
                  // Handle "Application Guide" button press here
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  primary: Colors.white,
                  minimumSize: Size(250, 0),
                ),
                child: Row(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        "assets/profile/guide.png",
                        width: 25,
                        height: 25,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Application Guide                         ",
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20), // Add extra space here
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: ElevatedButton(
                onPressed: () {
                  // Handle "Log Out" button press here
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  primary: Colors.white,
                  minimumSize: Size(250, 0),
                ),
                child: Row(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        "assets/profile/logout.png",
                        width: 25,
                        height: 25,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 15),
                    Text(
                      "Log Out                                         ",
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




