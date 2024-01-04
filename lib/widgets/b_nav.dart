import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:login/screens/home_screen.dart';
import 'package:login/screens/welc_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          children: [
            Container(
              color: Colors.transparent,
              child: const Center(
                child: HomeScreen(),
              ),
            ),
            Container(
              color: Colors.transparent,
              child: const Center(
                child: Text('Page 2'),
              ),
            ),
            Container(
              color: Colors.greenAccent,
              child: const Center(
                child: Text('Page 3'),
              ),
            ),
            Container(
              color: Colors.yellow,
              child: const Center(
                child: Text('Page 4'),
              ),
            ),
            Container(
              color: Colors.deepOrangeAccent,
              child: const Center(
                child: Text('Page 5'),
              ),
            ),
            Container(
              color: Colors.lightBlueAccent,
              child: const Center(
                child: Text('Page 6'),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF821538),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(0.1),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              gap: 3,
              color: Colors.white,
              activeColor: const Color(0xFF821538),
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.white,
              tabs: const [
                GButton(
                  icon: Icons.dashboard,
                  text: 'Dashboard',
                ),
                GButton(
                  icon: Icons.school,
                  text: 'Academics',
                ),
                GButton(
                  icon: Icons.payment,
                  text: 'Account',
                ),
                GButton(
                  icon: Icons.group,
                  text: 'Community',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Settings',
                ),
              ],
              selectedIndex: _currentIndex,
              onTabChange: (index) {
                setState(() {
                  _currentIndex = index;
                  _pageController.jumpToPage(index);
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
