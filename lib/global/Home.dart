import 'package:flutter/material.dart';

import '../profile/ProfilePage.dart';
import '../home/HomePage.dart';
import '../atom/StyledText.dart';

class Home extends StatefulWidget {
  const Home({required Key key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int _currentIndex=0;
  final List _screens=[const HomePage(),const ProfilePage()];

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledText(text: 'Goodnight AI', type: TextType.h2, color: Colors.deepPurple,),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _updateIndex,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.black54,
        selectedFontSize: 14,
        unselectedFontSize: 13,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}