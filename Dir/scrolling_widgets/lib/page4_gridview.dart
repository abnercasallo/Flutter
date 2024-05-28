import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(title: const Text("GridView"),),
    body: Column(
      children: [
        Container(
          height: 250,
          color: Colors.amber,
          child: GridView.count( mainAxisSpacing: 15, crossAxisSpacing: 30,
          scrollDirection: Axis.vertical,crossAxisCount: 3,
          children: [Container(color: Colors.red,child: const Text("Hola")), Container(color: Colors.red,child: const Text("Hola")),
          Container(color: Colors.red,child: const Text("Hola")),Container(color: Colors.red,child: const Text("Hola")),],),
        ),
        const SizedBox(height: 20,),
        Container(height: 250 , color: Colors.cyan, 
        child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemCount: 16,
         itemBuilder: (context, index){ return Padding(
           padding: const EdgeInsets.all(8.0),
           child: CircleAvatar(child: Text('Hola $index'),),
         );}) ,)
      ],
    ));
  }
}