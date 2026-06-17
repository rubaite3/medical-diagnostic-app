import 'package:flutter/material.dart';
import 'features/auth/view/screens/on_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medical_Diagnostic_App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Tajwal',
        useMaterial3: true,
      ),
      home: const OnBoardingScreen(),
    );
  }
}