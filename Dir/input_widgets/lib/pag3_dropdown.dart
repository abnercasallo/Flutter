import 'package:flutter/material.dart';


class DropDownPage extends StatefulWidget {
  const DropDownPage({super.key});

  @override
  State<DropDownPage> createState() => _DropDownPageState();
}

class _DropDownPageState extends State<DropDownPage> {
  String dvalue="Opción A";
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownButton(underline: Container(height: 3, color: Colors.grey,),items: const [DropdownMenuItem(value: "Opción A",child: Text("A"),),
          DropdownMenuItem(value: "Opción B",child: Text("B"),),
          DropdownMenuItem(value: "Opción C",child: Text("C"),)],
          onChanged: (value) {
            //print(value);
            dvalue=value!;
            setState(() {
              
            });
          },
          icon: const Icon(Icons.menu),
          value: dvalue ,
          
          ),
          Text("Haz seleccionado $dvalue")
        ],
      ),
    ),);
  }
}

