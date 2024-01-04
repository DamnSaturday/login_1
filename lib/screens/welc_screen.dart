import 'dart:async'; // Add this import for the Duration class
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/cus_scaffwid.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  final Widget? child;
  const WelcomeScreen({Key? key, this.child}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual);

    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => const LoginScreen()));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffoldWidget(
      child: Center(
        child: Container(
          constraints: const BoxConstraints(
            minHeight: 0,
            maxHeight: double.infinity,
          ),
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.98),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 100,
                width: 100,
              ),
              Image.asset(
                'assets/images/L_text.png',
                height: 100,
                width: 100,
              ),
              const SizedBox(height: 80),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Student Portal\n',
                      style: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF821538),
                      ),
                    ),
                    TextSpan(
                      text: 'Welcome',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

