import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Button'), backgroundColor: Colors.deepPurple,),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: () {
        
            }, style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.yellow),
              padding:const WidgetStatePropertyAll(EdgeInsets.all(20)),
              elevation: WidgetStateProperty.all(10),
              overlayColor: WidgetStateProperty.all(Colors.black)
              ), 
            child: const Text('Press Me', style: TextStyle(fontSize: 20, color: Colors.black),), 
            ),
            const SizedBox(height: 20,),

            ElevatedButton(onPressed: () {

            }, child: const Text('Lets fucking go guys', style: TextStyle(fontSize: 20, color: Colors.black),))

            
          ],
        ),
      ),
    );
    
  }
}