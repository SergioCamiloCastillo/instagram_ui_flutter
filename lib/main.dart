import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePageScreen(),
      theme: ThemeData(primarySwatch: Colors.grey),
      debugShowCheckedModeBanner: false,
    );
  }
}
