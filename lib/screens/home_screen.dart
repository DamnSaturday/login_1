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
            image: AssetImage('assets/images/dsy.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: const CustomAppBar(),
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
          color: Colors.white,
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
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFff3d3d),
                        Color(0xFFe83140),
                        Color(0xFFd12741),
                        Color(0xFFba2040),
                        Color(0xFFa21a3e),
                        Color(0xFF97183c),
                        Color(0xFF8d163a),
                        Color(0xFF821538),
                        Color(0xFF821538),
                        Color(0xFF821538),
                        Color(0xFF821538),
                        Color(0xFF821538),
                      ],
                    ), // Background color for the first column
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Student Name:',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Dennis Bortey Bortier',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Color(0xFF133888),
                        Color(0xFF133888),
                        Color(0xFF133888),
                        Color(0xFF133888),
                        Color(0xFF133888),
                        Color(0xFF153a8c),
                        Color(0xFF163d8f),
                        Color(0xFF183f93),
                        Color(0xFF1c449b),
                        Color(0xFF2049a3),
                        Color(0xFF234eab),
                        Color(0xFF2753b3),
                      ],
                    ), // Background color for the second column
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Student ID:',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'BSC/CSM/20232454',
                        style: TextStyle(
                          color: Colors.white,
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
                    gradient: const LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color(0xFF20942a),
                        Color(0xFF20942a),
                        Color(0xFF20942a),
                        Color(0xFF20942a),
                        Color(0xFF20942a),
                        Color(0xFF21972e),
                        Color(0xFF219932),
                        Color(0xFF229c36),
                        Color(0xFF23a23e),
                        Color(0xFF25a747),
                        Color(0xFF26ad4f),
                        Color(0xFF27b357),
                      ],
                    ), // Background color for the third column
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Course Name:',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Computer Science with Management',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xFFbea220),
                        Color(0xFFbea220),
                        Color(0xFFbea220),
                        Color(0xFFbea220),
                        Color(0xFFbea220),
                        Color(0xFFbaa41f),
                        Color(0xFFb7a51e),
                        Color(0xFFb3a71d),
                        Color(0xFFaaaa1d),
                        Color(0xFF9fad1e),
                        Color(0xFF95b022),
                        Color(0xFF89b327),
                      ],
                    ), // Background color for the fourth column
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Level:',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '200',
                        style: TextStyle(
                          color: Colors.white,
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
