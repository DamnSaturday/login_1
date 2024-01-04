import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: IconButton(
        icon: const Icon(Icons.menu),
        iconSize: 24,
        color: const Color(0xFF821538),
        onPressed: () {},
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 40,
                width: 40,
              ),
              const SizedBox(width: 0),
          Image.asset(
            'assets/images/L_text.png',
            height: 50,
            width: 50,
          ),
            ],
          ),
          const SizedBox(width: 8),
          const Text(
            'Dennis Bortey Bortier',
            style: TextStyle(
              color: Color(0xFF821538),
              fontSize: 18,
            ),
          ),
        ],
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.person_rounded),
          iconSize: 34,
          color: const Color(0xFF821538),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
