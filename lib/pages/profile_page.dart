import 'package:example/pages/home_page.dart';
import 'package:example/pages/profiledetails_page.dart';
import 'package:example/pages/settings_page.dart';
import 'package:example/pages/welcome_page.dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'applicationguide_page.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);
  FlutterTts flutterTts = FlutterTts();

  Future<void> speakText(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Show a dialog to confirm leaving the app
        bool? shouldLeave = await showExitConfirmationDialog(context);
        return shouldLeave ?? false;
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
        ),
        body: Center(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      speakText("Profile");
                    },
                    child: Text(
                      "Profile",
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: ElevatedButton(
                  onPressed: () {
                    // Handle "View your profile details" button press here
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileDetailsPage(
                          username: "Malikah",
                          email: "malikah@gmail.com",
                          profileImage: "assets/lavanille.jpg",
                          phoneNumber: "+230 58127465",
                          dateOfBirth: "01/01/2002",
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
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
                      GestureDetector(
                        onTap: () {
                          speakText("View your profile details");
                        },
                        child: Text(
                          "View your profile details",
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20), // Add extra space here
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: ElevatedButton(
                  onPressed: () {
                    // Handle "Settings" button press here
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SettingsPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
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
                      GestureDetector(
                        onTap: () {
                          speakText("Settings");
                        },
                        child: Text(
                          "Settings",
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20), // Add extra space here
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: ElevatedButton(
                  onPressed: () {
                    // Handle "Application Guide" button press here
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ApplicationGuidePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
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
                      GestureDetector(
                        onTap: () {
                          speakText("Application Guide");
                        },
                        child: Text(
                          "Application Guide",
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20), // Add extra space here
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: ElevatedButton(
                  onPressed: () {
                    // Handle "Log Out" button press here
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => WelcomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
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
                      GestureDetector(
                        onTap: () {
                          speakText("Log Out");
                        },
                        child: Text(
                          "Log Out",
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<bool?> showExitConfirmationDialog(BuildContext context) async {
    return showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Warning'),
          content: Text('Do you really want to exit the app?'),
          actions: <Widget>[
            TextButton(
              child: Text('Yes'),
              onPressed: () {
                Navigator.of(context).pop(true); // Allow exit
              },
            ),
            TextButton(
              child: Text('No'),
              onPressed: () {
                Navigator.of(context).pop(false); // Stay in the app
              },
            ),
          ],
        );
      },
    );
  }
}
