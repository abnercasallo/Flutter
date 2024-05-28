import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  const TextFieldPage({super.key});

  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  String text='';
  void alerta(){showDialog(context: context, builder: (context){return  AlertDialog(title: const Center(child: Text("Confirmación")), 
  content:  SizedBox(height: 20,child: Center(child: Text("Ingreso Confirmado a $text"))), actions: [Center(child: TextButton(onPressed: (){Navigator.of(context).pop();}, child: const Text("Ok")))],)
  ;});}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(onChanged: (value){ setState(() {
            text=value;
          });},decoration: const InputDecoration(border: OutlineInputBorder(), labelText: 'Correo'), obscureText: false, cursorColor: Colors.amber,),
          ElevatedButton(onPressed: (){ alerta(); }, child: const Text("Ingresar"))
        ],
      )),
    ),);
  }
}