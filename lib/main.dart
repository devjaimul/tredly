import 'package:flutter/material.dart';
import 'package:tredly/views/home_screen.dart';

import 'package:tredly/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: SplashScreen(),
home: HomeScreen(),
    );
  }
}

