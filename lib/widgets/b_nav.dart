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
    return const Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        child: GNav(
          backgroundColor: Color(0xFF821538),
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor: Color(0xFF133888),
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
    );
  }
}
