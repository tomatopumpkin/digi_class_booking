import 'package:flutter/material.dart';
import 'welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      theme: ThemeData(
    scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
  ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

