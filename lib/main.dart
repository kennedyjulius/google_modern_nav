import 'package:flutter/material.dart';
import 'package:google_bottom_nav_modern/nacscreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavScreen(),
    );
      
      
  }
}

