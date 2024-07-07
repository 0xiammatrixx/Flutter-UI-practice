import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(''), backgroundColor: Theme.of(context).primaryColor),
    
    body: Center(
      child: ElevatedButton(onPressed: () {
        showModalBottomSheet(
          isDismissible: false,
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 0,
          enableDrag: false,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20)
            )
          ),
          context: context, builder: (context) {
          
            return const Column(
              mainAxisSize: MainAxisSize.min,
              children: [ ListTile(title: Text('Orange'),
              subtitle: Text('orange') 
            ),
            ListTile(title: Text('Apple'),
              subtitle: Text('Red') 
            ),
            ListTile(title: Text('Melon'),
              subtitle: Text('Green') 
            ),
            ListTile(title: Text('Orange'),
              subtitle: Text('orange') 
            ),
              ],
            );
        });
      }, child: const Text('Show BottomSheet')),
    ),
    );
  }
}