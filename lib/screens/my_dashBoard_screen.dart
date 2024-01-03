import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:login/widgets/cus_scaffwid_main.dart';

import '../widgets/b_nav.dart';

class MyDashboardScreen extends StatefulWidget {
  const MyDashboardScreen({Key? key}) : super(key: key);

  @override
  State<MyDashboardScreen> createState() => _MyDashboardScreenState();
}

class _MyDashboardScreenState extends State<MyDashboardScreen> {

  @override
  Widget build(BuildContext context) {
    return const CustomScaffoldWidgetMain(
      child: BottomNavigation(),
    );
  }
}
