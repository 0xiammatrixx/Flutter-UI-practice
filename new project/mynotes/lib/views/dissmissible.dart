import 'package:flutter/material.dart';

class DissmissibleWidget extends StatelessWidget {
  const DissmissibleWidget({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> fruits = ['Apple', 'Mango', 'Banana', 'Orange', 'Peach'];

    return Scaffold(
      appBar: AppBar(title: const Text('Dismissible Package')
      , backgroundColor: Colors.deepPurple,),

      body: ListView.builder(itemCount: fruits.length,
      itemBuilder: (context, index) {
        final fruit = fruits[index];
        return Dismissible(
          onDismissed: (direction) {
            if(direction==DismissDirection.startToEnd){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(fruits[index]), 
              backgroundColor: Colors.red,));
              } else if(direction==DismissDirection.endToStart) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(fruits[index]),
              backgroundColor: Colors.green,));
              }
          },

          key: Key(fruit),
          background: Container(color: Colors.red),
          secondaryBackground: Container(color: Colors.green,),
           child: 
          Card(
            child: ListTile(
              title: Text(fruits[index]),),
          ));
      }),

    );
  }
}