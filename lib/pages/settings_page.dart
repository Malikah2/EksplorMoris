import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Theme",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SwitchListTile(
              title: Text("Dark Mode"),
              value: _isDarkModeEnabled,
              onChanged: (value) {
                setState(() {
                  _isDarkModeEnabled = value;
                  //apply theme changes here
                  _changeTheme();
                });
              },
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


}
