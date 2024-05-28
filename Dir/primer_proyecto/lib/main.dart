import 'package:flutter/material.dart';


void main(){
  runApp(

   const App()

  );
}


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(useMaterial3: true,  ),  //colorSchemeSeed: Colors.blue  ///primarySwatch: Colors.purple, scaffoldBackgroundColor: Colors.purple[100]
      home: const Home()

    );
  }
}


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter=20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar( title: const Text("Home"), backgroundColor:Theme.of(context).colorScheme.inversePrimary , ) , //backgroundColor: Colors.blue
        body:  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Número de cuenta:"),
          Text("$counter", style: const TextStyle( fontSize: 32),),
        ],
      ),
    ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          counter= counter+1;
          setState(() {
            
          });


        }, 
        
        
        
        child: const Icon(Icons.add),),
      )

    
    ;
  }
}