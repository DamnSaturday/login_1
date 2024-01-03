import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Enable full-screen mode
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive,
        overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text('Student Portal'),
        backgroundColor: Colors.white,
        // You can add actions or other app bar properties here
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 100,
                width: 100,
              ),
              const SizedBox(height: 40),
              const Text(
                'Home',
                style: TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF821538),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
