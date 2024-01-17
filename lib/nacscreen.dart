import 'package:flutter/material.dart';
import 'package:google_bottom_nav_modern/pages/Likes.dart';
import 'package:google_bottom_nav_modern/pages/favorite.dart';
import 'package:google_bottom_nav_modern/pages/home.dart';
import 'package:google_bottom_nav_modern/pages/settings.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavScreen extends StatefulWidget {
  NavScreen({Key? key}) : super(key: key);

  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  
  final List<Widget> _pages =[
    MyHome(),
    MyLikes(),
    MyFavourite(),
    MySettings(),

  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: GNav(
        selectedIndex: _selectedIndex,
        gap: 8,
        onTabChange: _navigateBottomBar,
        hoverColor: Colors.black,
        backgroundColor: Colors.pinkAccent,
        color: Colors.red,
        activeColor: Colors.green,
        tabBackgroundColor: Colors.purple,
        tabs: [
          GButton(icon: Icons.home,
          
          text: 'Home',
          ),
          GButton(icon: Icons.favorite_border,
          text: 'Likes',
          ),
          GButton(icon: Icons.search,
          text: 'Search',
          ),
          GButton(icon: Icons.settings,
          text: 'Settings',
          ),
        ],
      ),
    );
  }
}