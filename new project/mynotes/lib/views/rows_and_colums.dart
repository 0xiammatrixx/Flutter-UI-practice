import 'package:flutter/material.dart';


class RowColumns extends StatelessWidget {
  const RowColumns({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: const Text('RowColumn'), 
      backgroundColor: Colors.deepPurple),

      body: Container(
        height: 300,
        width: w,
        color: Colors.amber,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly
        , children: [Container(height: 60,width: 60,color: Colors.blue,)
        , Container( height: 60,width: 60,color: Colors.red, )
        , Container( height: 60,width: 60,color: Colors.green,  )
        , Container( height: 60,width: 60,color: Colors.black, )
        , Container( height: 60,width: 60,color: Colors.white, )
        ],) 
      ),
    );
  }
}