import 'package:flutter/material.dart';

import '../widgets/custom_appBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      // Example of setting a background image with a Container
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/psy6.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: CustomScrollView(
            physics: const ClampingScrollPhysics(),
            slivers: <Widget>[
              _buildHeader(screenHeight),
              // Add more Sliver widgets if needed
            ],
          ),
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildHeader(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Color(0xFF821538),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.98), // Background color for the first column
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Student Name:',
                        style: TextStyle(
                          color: Color(0xFF133888),
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'Dennis Bortey Bortier',
                        style: TextStyle(
                          color: Color(0xFF821538),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.98),  // Background color for the second column
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Student ID:',
                        style: TextStyle(
                          color: Color(0xFF133888),
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'BSC/CSM/20232454',
                        style: TextStyle(
                          color: Color(0xFF821538),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.98), // Background color for the third column
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Course Name:',
                        style: TextStyle(
                          color: Color(0xFF133888),
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'Computer Science with Management',
                        style: TextStyle(
                          color: Color(0xFF821538),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.98), // Background color for the fourth column
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Level:',
                        style: TextStyle(
                          color: Color(0xFF133888),
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '200',
                        style: TextStyle(
                          color: Color(0xFF821538),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
