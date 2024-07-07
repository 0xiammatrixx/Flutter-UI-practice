import 'package:flutter/material.dart';
import 'package:mynotes/views/animatedtext.dart';
import 'package:mynotes/views/bottomnavigation.dart';
import 'package:mynotes/views/forms.dart';
import 'package:mynotes/views/tabbar.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark, 
        primaryColor: Colors.deepPurple,
        ),
          
      home: const TabBarWidget(),
    );
  }
}



