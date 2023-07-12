
import 'package:bai_3/pages/home_screen_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(      
        scaffoldBackgroundColor: Color(0xFF192038)
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

