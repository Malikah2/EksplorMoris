import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  Rx<ThemeData> _theme = ThemeData.light().obs;

  ThemeData get theme => _theme.value;

  void setTheme(ThemeData themeData) {
    _theme.value = theme;
    Get.changeTheme(theme);
  }
}

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _isDarkModeEnabled = false;
  bool _isLocationEnabled = false;
  String _selectedLanguage = 'English';
  FlutterTts flutterTts = FlutterTts();
  Future<void> speakText(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: (){
            speakText("Settings");
          },
            child: Text("Settings")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                speakText("Theme");
              },
              child: Text(
                "Theme",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SwitchListTile(
              title: GestureDetector(
                onTap: (){
                  speakText("Light Mode");
                },
                  child: Text("Light Mode")),
              value: _isDarkModeEnabled,
              onChanged: (value) {
                setState(() {
                  _isDarkModeEnabled = value;
                  //apply theme changes here
                  _changeTheme();
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: (){
                speakText("Location Preference");
              },
              child: Text(
                "Location Preference",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SwitchListTile(
              title: GestureDetector(
                onTap: (){
                  speakText("Enable Location");
                },
                  child: Text("Enable Location")),
              value: _isLocationEnabled,
              onChanged: (value) {
                setState(() {
                  _isLocationEnabled = value;
                  // Apply location preference changes here
                  // You can call a function to handle location preference change
                  _changeLocationPreference();
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: (){
                speakText("Language Preference");
              },
              child: Text(
                "Language Preference",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: DropdownButton<String>(
                  value: _selectedLanguage,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedLanguage = newValue!;
                      //Apply language preference changes here
                      _changeLanguagePreference(newValue);
                    });
                  },
                  items: <String>['English', 'French', 'Spanish', 'German']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: (){
                speakText("System Updates");
              },
              child: Text(
                "System Updates",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: ElevatedButton(
                onPressed: () {
                  // Show a snackbar indicating that the system is up to date
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("System is up to date!"),
                      duration: Duration(seconds: 2), // Duration for how long the snackbar is visible
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
                    GestureDetector(
                      onTap: (){
                        speakText("Check for Updates");
                      },
                      child: Text(
                        "Check for updates",
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
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  //Function to change theme
  void _changeTheme() {
    final themeController = Get.find<ThemeController>();
    if (_isDarkModeEnabled) {
      //apply dark theme
      themeController.setTheme(ThemeData.dark());
    } else {
      //apply light theme
      themeController.setTheme(ThemeData.light());
    }
  }

//Function to handle location preference change
  void _changeLocationPreference() {
    if (_isLocationEnabled) {
      // Enable location-based features
      // Perform necessary actions here
      print("Location preference enabled");
    } else {
      // Disable location-based features
      // Perform necessary actions here
      print("Location preference disabled");
    }
  }

//Function to handle language preference change
  void _changeLanguagePreference(String selectedLanguage) {
    // Perform actions based on the selected language
    print("Language preference changed to: $selectedLanguage");
    // You can implement language change logic here
  }
}
