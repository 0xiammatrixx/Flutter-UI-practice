import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Drawer Widget'), 
      backgroundColor: Colors.deepPurple,),
      drawer: Drawer(child: 
      Container(color: Theme.of(context).primaryColor, 
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: Container(color: Colors.black,
            padding: const EdgeInsets.all(10),
            child: const Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ), SizedBox(width: 10,),
                Column( mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Otom David', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold), ),
                    Text('davidotom50@gmail.com', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),)
                  ],
                )
              ],
            ), 
            )
            ),
            const ListTile(leading: Icon(Icons.folder),
            title: Text('My Files'),),
             const SizedBox(height: 10,),

            const ListTile(leading: Icon(Icons.alarm),
            title:  Text('Alarm'),),
            const SizedBox(height: 10,),

            const ListTile(leading: Icon(Icons.star),
            title:  Text('Favourites'),),
             const SizedBox(height: 10,),

            const ListTile(leading: Icon(Icons.delete),
            title: Text('Trash Bin'),),
            const SizedBox(height: 10,),

            const ListTile(leading: Icon(Icons.group),
            title: Text('Community'),),
            const Divider(),

            const ListTile(leading: Icon(Icons.share),
            title: Text('Share'),),
            const ListTile(leading: Icon(Icons.logout),
            title: Text('Trash Bin'),),
        ],
      ) ,
      )
      ),

    body: Container(
      child: Center(child: Text('Hello'),),
      
    ),
    );
  }
}