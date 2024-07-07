import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

List<String> fruits = ['Mango', 'Banana', 'Apple', 'Grape'];
Map fruitsPerson = {
'fruits': ['Mango', 'Banana', 'Apple', 'Grape'],
'person': ['Iweks', 'Otom','Samuel', 'Obaii'],
};

class _ListGridState extends State<ListGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List View and Grid View', 
      style: TextStyle(color: Colors.black),),
      backgroundColor: Colors.orange,
      elevation: 10,),

    body: Column(
      children: [
        Container( height: 300, width: MediaQuery.of(context).size.width,
          // child: ListView.builder(
          //   itemCount: fruits.length,
          //   itemBuilder: (context, index) {
          //     return Card(
          //       child: ListTile(
          //         leading: const Icon(Icons.person),
          //         title: Text(fruitsPerson['fruits'][index]),
          //        subtitle: Text(fruitsPerson['person'][index]),
          //        ),
          //     );
          //   },
          // ), 
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 15,
              childAspectRatio: 3/3),
              
              children: const [
                Card(
                child: Center(child: Text('Orange')),
              ),
              Card(
                child: Center(child: Text('Orange')),
              ),
              Card(
                child: Center(child: Text('Orange')),
              ),
              Card(
                child: Center(child: Text('Orange')),
              ),
              Card(
                child: Center(child: Text('Orange')),
              ),
              Card(
                child: Center(child: Text('Orange')),
              ),
              Card(
                child: Center(child: Text('Orange')),
              ),],),
        ),
        const SizedBox(height: 45,),

        Container( height: 300, width: MediaQuery.of(context).size.width,
        child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 15,
              childAspectRatio: 3/3),
              
              children: const [
                Card(
                child: Center(child: Text('Orange')),
              ),
              Card(
                child: Center(child: Text('Orange')),
              ),
              Card(
                child: Center(child: Text('Orange')),
              ),
              Card(
                child: Center(child: Text('Orange')),
              ),
              Card(
                child: Center(child: Text('Orange')),
              ),
              Card(
                child: Center(child: Text('Orange')),
              ),
              Card(
                child: Center(child: Text('Orange')),
              ),],),
        ),
      ],
    ),
    
    );
  }
}