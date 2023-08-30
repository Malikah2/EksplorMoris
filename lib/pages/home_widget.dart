import 'package:example/pages/home_page.dart';
import 'package:example/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:example/pages/other_page.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:ionicons/ionicons.dart';
import 'favorites_page.dart';

class Home extends StatefulWidget{
  @override
  State createState(){
    return _HomeState();
  }
}

class _HomeState extends State<Home>{
  int _currentIndex=0;
  final List<Widget> _children= [
    HomePage(),
    OtherPage(),
    FavoritesPage(),
    ProfilePage(),
  ];

  FlutterTts flutterTts = FlutterTts();

  Future<void> speakText(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                speakText("Home");
                onTabTapped(0);
              },
                child: Icon(Ionicons.home_outline, size: 24.0, color: Colors.blue,)),
            label: "Home"
          ),
          BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              speakText("Emergencies");
              onTabTapped(1);
            },
              child: Icon(Ionicons.warning_outline, size: 24.0,color: Colors.blue,)),
          label: "Emergencies",
          ),
          BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              speakText("Favorites");
              onTabTapped(2);
            },
              child: Icon(Ionicons.heart_outline, size: 24.0, color: Colors.blue,)),
         label: "Favorites",
          ),
          BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              speakText("Profile");
              onTabTapped(3);
            },
              child: Icon(Ionicons.person_outline, size: 24.0, color: Colors.blue,)),
          label: "Profile",
          ),
        ]
      ),
    );
  }

  void onTabTapped(int index){
    setState((){
      _currentIndex= index;
    });
  }
}
