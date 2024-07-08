import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AlertWidget'), backgroundColor: Theme.of(context).primaryColor,),

body: Center(
  child: ElevatedButton(onPressed: () {
  _showMyDialog(context);
  }, 
  child: const Text('Show Alert')),
),

    );
  }
}

Future<void> _showMyDialog (BuildContext context)async {
  return showDialog(context: context, builder: (BuildContext context){
    return   AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: const Text('This is an alert'),
      content: const SingleChildScrollView(
        child: ListBody(
          children: [
            Text('Alert Text'),
            Text('Alert Description'),  
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: (){}, child: const Text('Allow')),
        TextButton(onPressed: (){
          return Navigator.pop(context);
        }, child: const Text('Cancel')),
      ],
    );
  });
}