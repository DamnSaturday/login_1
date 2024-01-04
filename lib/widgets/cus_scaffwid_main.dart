import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'custom_appBar.dart';


class CustomScaffoldWidgetMain extends StatelessWidget {
  const CustomScaffoldWidgetMain( {
    Key? key,
    this.child,
  }) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    return Scaffold(
      appBar: const CustomAppBar(),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          SafeArea(
            child: child!,
          ),
        ],
      ),
    );
  }
}
