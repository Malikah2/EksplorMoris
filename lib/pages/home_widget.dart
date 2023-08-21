import 'package:example/pages/home_page.dart';
import 'package:example/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:example/pages/other_page.dart';
import 'package:ionicons/ionicons.dart';
import 'package:example/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'favorites_page.dart';
import 'home_page.dart';
import 'other_page.dart';

class Home extends StatefulWidget{
  @override
  State createState(){
    return _HomeState();
  }
}

class _HomeState extends State{
  int _currentIndex=0;
  final List _children= [
    HomePage(),
    OtherPage(),
    FavoritesPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:
      _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: const<BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Ionicons.home_outline, size: 24.0, color: Colors.blue,),
            label: "Home"
          ),
          BottomNavigationBarItem(
          icon: Icon(Ionicons.bookmark_outline, size: 24.0,color: Colors.blue,),
          label: "Emergencies",
          ),
          BottomNavigationBarItem(
          icon: Icon(Ionicons.heart_outline, size: 24.0, color: Colors.blue,),
         label: "Favorites",
          ),
          BottomNavigationBarItem(
          icon: Icon(Ionicons.person_outline, size: 24.0, color: Colors.blue,),
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
