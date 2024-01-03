import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:login/screens/login_screen.dart';
import 'package:login/screens/welc_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCi0wYu92PjxNPSR511qkFkm6i0X3o3UOo",
          appId: "1:120464718455:web:49fd9f7c90e8f573f9a472",
          messagingSenderId: "120464718455",
          projectId: "logincheck-826e3",
      ),
    );
  }
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
  return MaterialApp(
  title: 'Flutter Demo',
  theme: ThemeData(
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
  // Adjust other theme properties as needed
  ),
  home: const WelcomeScreen(
  child: LoginScreen(),
  ),
  );
  }
}
