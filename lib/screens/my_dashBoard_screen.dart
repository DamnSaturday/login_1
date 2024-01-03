import 'package:flutter/material.dart';
import '../widgets/cus_scaffwid.dart';

class MyDashboardScreen extends StatefulWidget {
  const MyDashboardScreen({Key? key}) : super(key: key);

  @override
  State<MyDashboardScreen> createState() => _MyDashboardScreenState();
}

class _MyDashboardScreenState extends State<MyDashboardScreen> {

  @override
  Widget build(BuildContext context) {
    return CustomScaffoldWidget(
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
                    text: 'Dashboard',
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
    );
  }
}
