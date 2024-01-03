import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: Container(
        color: const Color(0xFF821538),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          child: GNav(
            backgroundColor: Color(0xFF821538),
            color: Colors.white,
            activeColor: Color(0xFF821538),
            tabBackgroundColor: Colors.white,
            padding: EdgeInsets.all(10),
            gap: 8,
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                  icon: Icons.favorite_border,
                  text: 'Likes',),
              GButton(
                icon: Icons.search,
                text: 'Search',),
              GButton(
                icon: Icons.settings,
                text: 'Settings',),
            ],
          ),
        ),
      ),
    );
  }
}
