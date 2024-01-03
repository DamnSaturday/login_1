import 'package:flutter/material.dart';


class CustomScaffoldWidgetMain extends StatelessWidget {
  const CustomScaffoldWidgetMain({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset('assets/images/psy2.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,),
          SafeArea(
            child: child!,
          ),
        ],
      ),
    );
  }
}