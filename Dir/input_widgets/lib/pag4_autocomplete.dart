import 'package:flutter/material.dart';


class AutocompletePage extends StatelessWidget {
  const AutocompletePage({super.key});

  static const List<String> opciones = ['Abner', 'Juan', 'pedro', 'samuel','rocío','juliana'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Autocomplete")),
      body: Autocomplete<String>(optionsBuilder: (TextEditingValue textEditingValue){
        if (textEditingValue.text== '') {
          return const Iterable.empty();
        } 
          return opciones.where((element) { return element.toLowerCase().contains(textEditingValue.text.toLowerCase());}); // else {
        



      }) ,
    );
  }
}