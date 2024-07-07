import 'package:flutter/material.dart';


class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
        final snackbar = SnackBar(
          action: SnackBarAction(label: ('Undo'), 
          onPressed: () {}),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)),
          backgroundColor: Colors.red,
          behavior: SnackBarBehavior.floating,
          duration: const Duration(milliseconds: 3000),
          content: const Center(child: Text('An Error Ocurred While Performing This Task')));
        ScaffoldMessenger.of(context).showSnackBar(snackbar);
        }, child: const Text('Snackbar')),
      ),
    );
  }
}