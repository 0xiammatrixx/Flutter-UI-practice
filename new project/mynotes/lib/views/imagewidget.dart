import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Image'), backgroundColor: Theme.of(context).primaryColor,),

      body: Center(
        child: Container(
          height: 300,
          width: 300, 
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blue,
            image: const DecorationImage(image: AssetImage('assets/profile.jpg'), 
            fit: BoxFit.cover,)
          ),
        ),
      )
    );
  }
}