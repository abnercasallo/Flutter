import 'package:flutter/material.dart';
import 'package:input_widgets/pag2_textfield.dart';
import 'package:input_widgets/pag3_dropdown.dart';
import 'package:input_widgets/pag4_autocomplete.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("Home"),),
    body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
      ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>const TextFieldPage()));}, child: const Text("TextField")),
      ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>const DropDownPage()));}, child: const Text("DropDownButton")),
      ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>const AutocompletePage()));}, child: const Text("Autcomplete"))])),
    
    
    );
  }
}