import 'package:flutter/material.dart';
import 'package:sushi_app/screens/home/menu_screen.dart';
import 'package:sushi_app/screens/intro/intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Sushi APp',
      home: IntroScreen(),
      routes: {
        '/introscreen':(context) => const IntroScreen(),
        '/menuscreen':(context) => const MenuScreen(),
      }
    );
  }
}
