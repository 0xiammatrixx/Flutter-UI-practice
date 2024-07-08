import 'package:flutter/material.dart';
import 'package:mynotes/views/imagepicker.dart';




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
        primaryColor: Colors.blue,
        ),
          
      home: const ImagePickerWidget(),
    );
  }
}



