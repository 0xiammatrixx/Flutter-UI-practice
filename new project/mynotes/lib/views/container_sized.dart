import 'package:flutter/material.dart';

class ContainerSized extends StatelessWidget {
  const ContainerSized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Container and SizeBar'), 
      backgroundColor: Colors.deepPurple,),
      body:  Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: const BoxDecoration(color: Colors.deepPurple, 
          //borderRadius: BorderRadius.circular(20)
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
            boxShadow: [
              BoxShadow( blurRadius: 10, spreadRadius: 0.5)
            ]
          ),
          child: const Center(
            child: Text('Hello', style: TextStyle(fontSize: 20),) ),
        )
               
        ),
      );
  }
}